package com.fastcampus.ch4.service.member;

import com.fastcampus.ch4.dao.member.TermDao;
import com.fastcampus.ch4.dao.member.TermAgreeDao;
import com.fastcampus.ch4.dto.member.MemberDto;
import com.fastcampus.ch4.dto.member.ShippingAddressDto;
import com.fastcampus.ch4.dto.member.TermAgreeDto;
import com.fastcampus.ch4.dto.member.TermDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Service
public class SignUpServiceImpl implements SignUpService {

  @Autowired
  private MemberManagementService memberManagementService;

  @Autowired
  private TermDao termDao;

  @Autowired
  private TermAgreeDao termAgreeDao;

  @Autowired
  private TermService termService;

  @Autowired
  private ShippingAddressService shippingAddressService;

  @Override
  public void processSignup(MemberDto member, List<Integer> requiredTerms, List<Integer> optionalTerms, String address) {

    // 약관 동의 정보 생성
    List<TermAgreeDto> termAgreeDtos = createTermAgreeDtos(member.getId(), requiredTerms, optionalTerms);
//
    // 주소 정보 저장

    shippingAddressService.addAddress(new ShippingAddressDto(member.getId(), address));
    // 약관 동의 정보 저장
    termAgreeDao.insertTermAgreements(termAgreeDtos);
  }

  private List<TermAgreeDto> createTermAgreeDtos(String memberId, List<Integer> requiredTermIds, List<Integer> optionalTermIds) {
    LocalDateTime now = LocalDateTime.now(); // 현재 시간

    // 필수 약관이 null이거나 동의되지 않았으면 예외 발생 (회원 가입이 불가)
    if (requiredTermIds == null || requiredTermIds.isEmpty()) {
      throw new IllegalArgumentException("필수 약관에 동의해야 회원 가입이 가능합니다.");
    }

    // null 체크 후 빈 리스트로 초기화 (선택 약관)
    List<Integer> finalOptionalTermIds = optionalTermIds == null ? List.of() : optionalTermIds;


    // termService.getAllTerms()를 변수에 저장
    List<TermDto> allTerms = termService.getAllTerms(); // 최종적으로 모든 약관을 가져옵니다.

    // 선택 약관 동의 정보를 생성
    List<TermAgreeDto> optionalTermAgreeDtos = allTerms.stream()
            .filter(term -> finalOptionalTermIds.contains(term.getTermId()))
            .map(term -> new TermAgreeDto(
                    memberId, // 회원 ID
                    term.getTermId(),   // 약관 ID
                    "Y",      // 동의 여부 (Y/N)
                    now,      // 등록일
                    memberId, // 등록자 ID
                    now,      // 수정일
                    memberId  // 수정자 ID
            ))
            .collect(Collectors.toList());

    // 동의하지 않은 선택 약관도 포함
    List<TermAgreeDto> nonAgreedOptionalTerms = allTerms.stream()
            .filter(term -> !finalOptionalTermIds.contains(term.getTermId()))
            .map(term -> new TermAgreeDto(
                    memberId, // 회원 ID
                    term.getTermId(),   // 약관 ID
                    "N",      // 동의 여부 (Y/N)
                    now,      // 등록일
                    memberId, // 등록자 ID
                    now,      // 수정일
                    memberId  // 수정자 ID
            ))
            .collect(Collectors.toList());

    // 선택 약관 (동의한 것과 동의하지 않은 것)만 반환
    List<TermAgreeDto> allOptionalTermAgreeDtos = Stream.concat(
                    optionalTermAgreeDtos.stream(), nonAgreedOptionalTerms.stream())
            .collect(Collectors.toList());

    return allOptionalTermAgreeDtos;
  }

}
