select * from faq_cate;

delete from faq_cate;

INSERT INTO faq_cate (cate_code, name, use_chk, parent_code, reg_date, reg_id, up_date, up_id) VALUES
('00', '전체', 'Y', '0', NOW(), '110111', NOW(), '110111'),
('0010', '회원', 'Y', '00', NOW(), '110111', NOW(), '110111'),
('001010', '회원가입/탈퇴', 'Y', '0010', NOW(), '110111', NOW(), '110111'),
('001020', '본인/성인인증', 'Y', '0010', NOW(), '110111', NOW(), '110111'),
('001030', '회원정보', 'Y', '0010', NOW(), '110111', NOW(), '110111'),
('001040', '회원등급/혜택', 'Y', '0010', NOW(), '110111', NOW(), '110111'),
('001050', '휴면계정', 'Y', '0010', NOW(), '110111', NOW(), '110111'),
('001060', 'Prestige Lounge', 'Y', '0010', NOW(), '110111', NOW(), '110111'),
('0020', '도서/상품정보/교과서', 'Y', '00', NOW(), '110111', NOW(), '110111'),
('002010', '정보/검색/알림기능', 'Y', '0020', NOW(), '110111', NOW(), '110111'),
('002020', '서양도서', 'Y', '0020', NOW(), '110111', NOW(), '110111'),
('002030', '일본도서', 'Y', '0020', NOW(), '110111', NOW(), '110111'),
('002040', '교과서/방송대교재', 'Y', '0020', NOW(), '110111', NOW(), '110111'),
('002050', '일본잡지정기구독', 'Y', '0020', NOW(), '110111', NOW(), '110111'),
('002060', '기프트', 'Y', '0020', NOW(), '110111', NOW(), '110111'),
('0030', '주문/결제', 'Y', '00', NOW(), '110111', NOW(), '110111'),
('003010', '주문', 'Y', '0030', NOW(), '110111', NOW(), '110111'),
('003020', '결제', 'Y', '0030', NOW(), '110111', NOW(), '110111'),
('003030', '마일리지/예치금', 'Y', '0030', NOW(), '110111', NOW(), '110111'),
('003040', '할인쿠폰', 'Y', '0030', NOW(), '110111', NOW(), '110111'),
('003050', '통합포인트', 'Y', '0030', NOW(), '110111', NOW(), '110111'),
('003060', '기프트카드', 'Y', '0030', NOW(), '110111', NOW(), '110111'),
('003070', '상품권', 'Y', '0030', NOW(), '110111', NOW(), '110111'),
('0040', '배송/수령일 안내', 'Y', '00', NOW(), '110111', NOW(), '110111'),
('004010', '배송료', 'Y', '0040', NOW(), '110111', NOW(), '110111'),
('004020', '배송안내', 'Y', '0040', NOW(), '110111', NOW(), '110111'),
('004030', '해외배송안내', 'Y', '0040', NOW(), '110111', NOW(), '110111'),
('004040', '바로드림서비스', 'Y', '0040', NOW(), '110111', NOW(), '110111'),
('004050', '배로배송서비스', 'Y', '0040', NOW(), '110111', NOW(), '110111'),
('0050', '반품/교환/환불', 'Y', '00', NOW(), '110111', NOW(), '110111'),
('005010', '반품/교환/환불', 'Y', '0050', NOW(), '110111', NOW(), '110111'),
('005020', '주문취소/변경', 'Y', '0050', NOW(), '110111', NOW(), '110111'),
('005030', '주의사항', 'Y', '0050', NOW(), '110111', NOW(), '110111'),
('0060', '세금계산서/증빙', 'Y', '00', NOW(), '110111', NOW(), '110111'),
('006010', '현금영수증', 'Y', '0060', NOW(), '110111', NOW(), '110111'),
('006020', '세금계산서', 'Y', '0060', NOW(), '110111', NOW(), '110111'),
('006030', '거래명세서', 'Y', '0060', NOW(), '110111', NOW(), '110111'),
('006040', '신용카드전표', 'Y', '0060', NOW(), '110111', NOW(), '110111'),
('006050', '도서소득공제', 'Y', '0060', NOW(), '110111', NOW(), '110111'),
('0070', '서비스', 'Y', '00', NOW(), '110111', NOW(), '110111'),
('007010', '로그인도용방지', 'Y', '0070', NOW(), '110111', NOW(), '110111'),
('007020', '안심번호 서비스', 'Y', '0070', NOW(), '110111', NOW(), '110111'),
('007030', 'Klober리뷰 리워드', 'Y', '0070', NOW(), '110111', NOW(), '110111'),
('007040', '카카오톡 알림톡', 'Y', '0070', NOW(), '110111', NOW(), '110111'),
('007050', '분척서비스', 'Y', '0070', NOW(), '110111', NOW(), '110111'),
('007060', '문서검색 서비스', 'Y', '0070', NOW(), '110111', NOW(), '110111'),
('0080', 'eBook', 'Y', '00', NOW(), '110111', NOW(), '110111'),
('008010', 'eBook', 'Y', '0080', NOW(), '110111', NOW(), '110111'),
('008020', '대여', 'Y', '0080', NOW(), '110111', NOW(), '110111'),
('008030', '주문(결제)/환불', 'Y', '0080', NOW(), '110111', NOW(), '110111'),
('008040', '교보e캐시', 'Y', '0080', NOW(), '110111', NOW(), '110111'),
('008050', 'eBook바로보기(웹뷰어)', 'Y', '0080', NOW(), '110111', NOW(), '110111'),
('008060', '학술논문', 'Y', '0080', NOW(), '110111', NOW(), '110111'),
('0090', '바로출판 POD', 'Y', '00', NOW(), '110111', NOW(), '110111'),
('009010', '서비스 정의', 'Y', '0090', NOW(), '110111', NOW(), '110111'),
('009020', 'POD 출판사 제휴 안내', 'Y', '0090', NOW(), '110111', NOW(), '110111'),
('009030', 'POD 개인 출판 안내', 'Y', '0090', NOW(), '110111', NOW(), '110111'),
('009040', '판매내역/정산', 'Y', '0090', NOW(), '110111', NOW(), '110111'),
('009050', '구매/배송', 'Y', '0090', NOW(), '110111', NOW(), '110111'),
('009060', '취소/환불/기타', 'Y', '0090', NOW(), '110111', NOW(), '110111');


select * from faq;

delete from faq;

INSERT INTO faq (faq_catg_code, title, cont, dsply_chk, view_cnt, reg_date, reg_id, up_date, up_id) VALUES
-- 회원가입/탈퇴 카테고리
('001010', '회원가입을 어떻게 하나요?', '회원가입은 홈페이지의 회원가입 페이지에서 간단한 정보 입력 후 가입 버튼을 클릭하여 진행할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('001010', '회원가입 시 오류가 발생했어요. 어떻게 하나요?', '회원가입 중 오류가 발생하면 입력한 정보가 정확한지 확인하고, 다시 시도해 보세요. 계속 문제가 발생하면 고객센터에 문의해 주세요.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('001010', '회원 탈퇴는 어떻게 하나요?', '회원 탈퇴는 "회원정보 수정" 페이지에서 탈퇴 신청을 통해 진행할 수 있습니다. 탈퇴 후에는 회원 정보가 삭제됩니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 본인/성인인증 카테고리
('001020', '본인 인증은 어떻게 하나요?', '본인 인증은 홈페이지의 본인 인증 페이지에서 신분증을 업로드하고 인증 절차를 따라 진행할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('001020', '본인 인증이 실패했어요. 어떻게 해야 하나요?', '본인 인증 실패 시, 입력한 정보가 정확한지 확인하고 다시 시도해 주세요. 계속 문제가 발생하면 고객센터에 문의해 주세요.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('001020', '성인 인증 절차는 어떻게 되나요?', '성인 인증은 생년월일 정보를 입력하고 신분증을 제출하여 인증 절차를 완료할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 회원정보 카테고리
('001030', '회원정보를 어떻게 수정하나요?', '회원정보는 "회원정보 수정" 페이지에서 변경할 수 있습니다. 변경 사항을 저장하고 확인해 주세요.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('001030', '회원정보 수정 후, 반영되기까지 시간이 걸리나요?', '회원정보 수정 후, 즉시 반영됩니다. 변경된 정보가 보이지 않는 경우 페이지를 새로고침해 보세요.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('001030', '회원정보 보호는 어떻게 하나요?', '회원정보 보호를 위해 비밀번호는 주기적으로 변경하고, 타인과 공유하지 않도록 주의해 주세요.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 회원등급/혜택 카테고리
('001040', '회원 등급은 어떻게 구분되나요?', '회원 등급은 회원의 구매 이력 및 활동에 따라 구분되며, 등급에 따른 혜택은 홈페이지에서 확인할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('001040', '회원 등급이 변경되었어요. 혜택은 어떻게 되나요?', '회원 등급이 변경되면 해당 등급에 맞는 혜택이 자동으로 적용됩니다. 자세한 사항은 회원 혜택 페이지에서 확인해 주세요.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('001040', '회원 등급 변경은 어떻게 하나요?', '회원 등급 변경은 직접적으로 할 수 없으며, 활동에 따라 자동으로 변경됩니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 휴면계정 카테고리
('001050', '휴면 계정은 무엇인가요?', '휴면 계정은 일정 기간 동안 로그인하지 않은 계정으로, 비활성 상태로 전환됩니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('001050', '휴면 계정을 어떻게 복구하나요?', '휴면 계정은 로그인 후 계정 복구 절차를 진행하거나 고객센터에 문의하여 복구할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('001050', '휴면 계정 처리 시 주의사항은 무엇인가요?', '휴면 계정은 일정 기간 후 삭제될 수 있으므로, 중요 정보를 미리 백업해 두는 것이 좋습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- Prestige Lounge 카테고리
('001060', 'Prestige Lounge 이용 방법은 무엇인가요?', 'Prestige Lounge 이용은 회원가입 후 특정 등급 이상일 경우 이용 가능합니다. 자세한 사항은 홈페이지에서 확인해 주세요.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('001060', 'Prestige Lounge에서 제공하는 혜택은 무엇인가요?', 'Prestige Lounge에서는 다양한 혜택과 서비스를 제공하며, 상세한 혜택 내용은 홈페이지에서 확인할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('001060', 'Prestige Lounge 문제 해결은 어떻게 하나요?', 'Prestige Lounge 이용 중 문제가 발생하면 고객센터에 문의하여 지원을 받을 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 정보/검색/알림기능 카테고리
('002010', '정보 검색 기능은 어떻게 사용하나요?', '정보 검색 기능은 홈페이지의 검색창에 검색어를 입력하여 필요한 정보를 찾을 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('002010', '알림 기능을 어떻게 설정하나요?', '알림 기능 설정은 "알림 설정" 페이지에서 가능합니다. 원하는 알림을 선택하여 설정해 주세요.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('002010', '알림 기능이 작동하지 않아요. 어떻게 하나요?', '알림 기능이 작동하지 않는 경우, 설정을 확인하고 문제가 지속되면 고객센터에 문의해 주세요.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 서양도서 카테고리
('002020', '서양 도서를 어떻게 구매하나요?', '서양 도서는 홈페이지의 도서 카테고리에서 선택 후 장바구니에 담고, 결제 절차를 통해 구매할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('002020', '서양 도서를 검색하는 방법은 무엇인가요?', '서양 도서를 검색하려면 홈페이지의 검색창에 도서 제목이나 저자명을 입력하여 검색할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('002020', '서양 도서 구매 후 문제가 발생했어요.', '서양 도서 구매 후 문제가 발생하면 고객센터에 문의하여 문제를 해결할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 일본도서 카테고리
('002030', '일본 도서를 어떻게 구매하나요?', '일본 도서는 홈페이지의 도서 카테고리에서 선택 후 장바구니에 담고 결제 절차를 통해 구매할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('002030', '일본 도서 검색은 어떻게 하나요?', '일본 도서를 검색하려면 홈페이지의 검색창에 도서 제목이나 저자명을 입력하여 검색할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('002030', '일본 도서와 관련된 문제는 어떻게 해결하나요?', '일본 도서와 관련된 문제는 고객센터에 문의하여 지원을 받을 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 교과서/방송대교재 카테고리
('002040', '교과서 구매 방법은 무엇인가요?', '교과서는 홈페이지의 교과서 카테고리에서 선택 후 장바구니에 담고 결제 절차를 통해 구매할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('002040', '방송대교재 문제 해결 방법은?', '방송대교재와 관련된 문제는 고객센터에 문의하여 문제를 해결할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('002040', '교과서 배송 기간은 얼마나 걸리나요?', '교과서 배송 기간은 지역에 따라 다르며, 주문 후 대략 3~5일 정도 소요됩니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 일본잡지정기구독 카테고리
('002050', '일본 잡지 정기 구독은 어떻게 하나요?', '일본 잡지 정기 구독은 홈페이지의 정기 구독 페이지에서 원하는 잡지를 선택 후 구독 신청을 통해 진행할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('002050', '일본 잡지 구독 연장 방법은?', '일본 잡지 구독 연장은 홈페이지의 구독 관리 페이지에서 연장 신청을 통해 진행할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('002050', '일본 잡지 정기 구독 관련 문제는 어떻게 해결하나요?', '일본 잡지 정기 구독과 관련된 문제는 고객센터에 문의하여 해결할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 한정판 상품 카테고리
('002060', '한정판 상품 구매 방법은 무엇인가요?', '한정판 상품은 홈페이지에서 별도로 제공되는 한정판 카테고리에서 구매할 수 있습니다. 빠른 구매를 권장합니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('002060', '한정판 상품의 재고는 어떻게 확인하나요?', '한정판 상품의 재고는 상품 페이지에서 확인할 수 있으며, 재고가 소진되면 구매할 수 없습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('002060', '한정판 상품 문제 해결은 어떻게 하나요?', '한정판 상품과 관련된 문제는 고객센터에 문의하여 해결할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 원서/한서 카테고리
('002070', '원서/한서 구매 방법은 무엇인가요?', '원서/한서는 홈페이지의 원서/한서 카테고리에서 원하는 도서를 선택 후 장바구니에 담고 결제 절차를 통해 구매할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('002070', '원서/한서 검색은 어떻게 하나요?', '원서/한서를 검색하려면 홈페이지의 검색창에 도서 제목이나 저자명을 입력하여 검색할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('002070', '원서/한서 관련 문제는 어떻게 해결하나요?', '원서/한서와 관련된 문제는 고객센터에 문의하여 지원을 받을 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 리워드카드 카테고리
('003010', '리워드 카드 사용 방법은 무엇인가요?', '리워드 카드는 홈페이지의 리워드 카드 사용 가이드를 참고하여 사용할 수 있습니다. 카드를 활성화한 후 이용해 주세요.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('003010', '리워드 카드 문제 해결 방법은?', '리워드 카드와 관련된 문제는 고객센터에 문의하여 지원을 받을 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('003010', '리워드 카드 잔액 조회 방법은?', '리워드 카드의 잔액은 홈페이지의 카드 잔액 조회 페이지에서 확인할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 마일리지/예치금 카테고리
('003030', '마일리지 사용 방법은 무엇인가요?', '마일리지는 홈페이지의 마일리지 사용 가이드를 참조하여 사용할 수 있습니다. 적립된 마일리지를 확인하고 사용해 주세요.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('003030', '예치금 문제 해결 방법은?', '예치금 관련 문제는 고객센터에 문의하여 해결할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('003030', '마일리지 적립 방법은 무엇인가요?', '마일리지는 구매 시 적립되며, 홈페이지의 마일리지 적립 안내 페이지에서 자세한 사항을 확인할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 할인쿠폰 카테고리
('003040', '할인쿠폰 사용 방법은 무엇인가요?', '할인쿠폰은 결제 시 쿠폰 코드를 입력하여 사용할 수 있으며, 자세한 사용 방법은 쿠폰 페이지에서 확인할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('003040', '할인쿠폰 문제 해결 방법은?', '할인쿠폰 사용 중 문제가 발생하면 쿠폰 코드 입력 오류를 확인하고, 여전히 문제가 해결되지 않으면 고객센터에 문의해 주세요.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('003040', '할인쿠폰 적용 방법은 무엇인가요?', '할인쿠폰은 결제 페이지에서 쿠폰 코드를 입력하여 적용할 수 있으며, 적용된 할인 금액은 결제 금액에서 차감됩니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 통합포인트 카테고리
('003050', '통합포인트 사용 방법은 무엇인가요?', '통합포인트는 홈페이지의 통합포인트 사용 안내 페이지에서 사용 방법을 확인할 수 있으며, 포인트를 결제 시 사용할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('003050', '통합포인트 문제 해결 방법은?', '통합포인트 관련 문제는 고객센터에 문의하여 지원을 받을 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('003050', '통합포인트 적립 방법은 무엇인가요?', '통합포인트는 구매 시 자동으로 적립되며, 적립된 포인트는 홈페이지의 포인트 관리 페이지에서 확인할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 기프트카드 카테고리
('003060', '기프트카드 사용 방법은 무엇인가요?', '기프트카드는 홈페이지의 기프트카드 사용 안내 페이지에서 사용 방법을 확인할 수 있으며, 결제 시 기프트카드 번호를 입력하면 됩니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('003060', '기프트카드 문제 해결 방법은?', '기프트카드 사용 중 문제가 발생하면 기프트카드 번호를 확인하고, 문제 해결이 안 되면 고객센터에 문의해 주세요.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('003060', '기프트카드 잔액 조회 방법은?', '기프트카드의 잔액은 홈페이지의 기프트카드 잔액 조회 페이지에서 확인할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 상품권 카테고리
('003070', '상품권 사용 방법은 무엇인가요?', '상품권은 홈페이지의 상품권 사용 안내 페이지에서 사용 방법을 확인할 수 있으며, 결제 시 상품권 번호를 입력하면 됩니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('003070', '상품권 문제 해결 방법은?', '상품권 사용 중 문제가 발생하면 상품권 번호를 확인하고, 문제 해결이 안 되면 고객센터에 문의해 주세요.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('003070', '상품권 잔액 조회 방법은?', '상품권의 잔액은 홈페이지의 상품권 잔액 조회 페이지에서 확인할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 반품/교환/환불 카테고리
('005010', '반품 절차는 어떻게 되나요?', '반품 절차는 "반품 신청" 페이지에서 신청할 수 있으며, 반품 규정을 준수하여 반품을 진행해 주세요.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('005010', '교환 방법은 무엇인가요?', '교환은 "교환 신청" 페이지에서 신청할 수 있으며, 교환 규정을 확인하고 진행해 주세요.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('005010', '환불 정책은 어떻게 되나요?', '환불 정책은 홈페이지의 환불 정책 페이지에서 확인할 수 있으며, 환불 요청은 "환불 신청" 페이지를 통해 진행해 주세요.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 현금영수증 카테고리
('006010', '현금영수증 발급 방법은 무엇인가요?', '현금영수증은 결제 시 발급 요청을 선택하거나, "현금영수증 발급" 페이지에서 발급 요청을 할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('006010', '현금영수증 문제 해결 방법은?', '현금영수증 관련 문제는 고객센터에 문의하여 지원을 받을 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('006010', '현금영수증 재발급은 어떻게 하나요?', '현금영수증 재발급은 "현금영수증 재발급" 페이지에서 요청할 수 있으며, 필요한 정보를 입력하여 요청해 주세요.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 배송정보 카테고리
('007010', '배송 조회 방법은 무엇인가요?', '배송 조회는 "배송 조회" 페이지에서 주문번호를 입력하여 확인할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('007010', '배송 문제 발생 시 어떻게 하나요?', '배송 중 문제가 발생하면 고객센터에 문의하여 문제를 해결할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('007010', '배송 기간은 얼마나 걸리나요?', '배송 기간은 지역에 따라 다르며, 주문 후 대략 3~7일 정도 소요됩니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 운영시간 카테고리
('007020', '운영시간은 어떻게 되나요?', '운영시간은 홈페이지의 운영시간 안내 페이지에서 확인할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('007020', '운영시간 외에 문의는 어떻게 하나요?', '운영시간 외에도 고객센터를 통해 문의할 수 있으며, 이메일 또는 온라인 문의를 이용해 주세요.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('007020', '휴일은 언제인가요?', '휴일 정보는 홈페이지의 운영시간 안내 페이지에서 확인할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 기업회원 카테고리
('008010', '기업회원 가입 방법은 무엇인가요?', '기업회원 가입은 홈페이지의 기업회원 가입 페이지에서 진행할 수 있으며, 기업 관련 정보를 입력하여 가입할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('008010', '기업회원 혜택은 무엇인가요?', '기업회원 혜택은 홈페이지의 기업회원 혜택 페이지에서 확인할 수 있으며, 다양한 혜택이 제공됩니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('008010', '기업회원 전환 방법은 어떻게 되나요?', '기업회원 전환은 기존 회원 계정을 기업회원으로 전환 요청할 수 있으며, 고객센터에 문의하여 진행할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 업체정보 카테고리
('008020', '업체정보는 어떻게 확인하나요?', '업체정보는 홈페이지의 업체정보 페이지에서 확인할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('008020', '업체정보 수정 방법은 무엇인가요?', '업체정보 수정은 고객센터에 문의하여 진행할 수 있으며, 필요한 정보를 제공하여 수정할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('008020', '업체정보 변경 시 주의사항은 무엇인가요?', '업체정보 변경 시에는 정확한 정보를 입력하고, 변경 사항을 잘 확인하여 진행해 주세요.', 'Y', 0, NOW(), '110111', NOW(), '110111'),

-- 고객센터 카테고리
('009010', '고객센터 운영시간은 어떻게 되나요?', '고객센터 운영시간은 홈페이지의 고객센터 페이지에서 확인할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('009010', '고객센터 문의 방법은 무엇인가요?', '고객센터 문의는 이메일, 전화, 또는 온라인 문의를 통해 진행할 수 있습니다.', 'Y', 0, NOW(), '110111', NOW(), '110111'),
('009010', '고객센터 문제 해결 방법은?', '고객센터 문제 해결은 고객센터에 문의하여 지원을 받을 수 있으며, 문제 해결을 위해 필요한 정보를 제공해 주세요.', 'Y', 0, NOW(), '110111', NOW(), '110111');
