package cart.dao;

import com.fastcampus.ch4.dao.cart.CartDao;
import com.fastcampus.ch4.dto.cart.CartDto;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.MyBatisSystemException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.Map;

import static org.junit.Assert.*;

/*
장바구니
1. 생성
- 장바구니 생성 시 cart_num (pk) 를 반환한다.
- userId 를 속성으로 하여 생성한다.
- userId 가 null 이어도 생성된다.

2. 조회
- seq 조회
- userId 조회

3. 삭제
- cartSeq 를 받아서 삭제하기
- userId 를 받아서 삭제하기
- 삭제 후 조회 확인 할 것

 */


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class CartDaoTest {
    @Autowired
    private CartDao cartDao;

    final static String TEST_USER = "CART_TEST_USER";

    @Before
    public void afterTest () {
        int result = cartDao.deleteAll();
    }


    @Test
    public void 장바구니생성_withUserId (){
        // cartDto 생성
        CartDto cartDto = CartDto.create();
        cartDto.setUserId(TEST_USER);
        cartDto.setReg_id(TEST_USER);
        cartDto.setUp_id(TEST_USER);

        // insert
        Integer cartSeq = cartDao.insertAndReturnSeq(cartDto);
        assertNotNull(cartSeq);
    }

    @Test
    public void 장바구니생성_noUserId () {
        CartDto cartDto = CartDto.create();
        cartDto.setReg_id(TEST_USER);
        cartDto.setUp_id(TEST_USER);

        // insert
        Integer cart_num = cartDao.insertAndReturnSeq(cartDto);
        assertNotNull(cart_num);
    }

    @Test(expected = DataIntegrityViolationException.class)
    public void 장바구니생성_시스템컬럼미입력 () {
        CartDto cartDto = CartDto.create();

        // insert
        Integer cartSeq = cartDao.insertAndReturnSeq(cartDto);
        assertNotNull(cartSeq);
    }


    // 조회 후 비교
    @Test
    public void 장바구니조회_cartSeq () {
        CartDto cartDto = CartDto.create();
        cartDto.setUserId(TEST_USER);
        cartDto.setReg_id(TEST_USER);
        cartDto.setUp_id(TEST_USER);

        // insert
        Integer cartSeq = cartDao.insertAndReturnSeq(cartDto);
        assertNotNull(cartSeq);

        // give
        Map map = new HashMap<>();
        map.put("cart_seq", cartSeq);

        // select
        CartDto selectedCartDto = cartDao.selectByMap(map);
        assertNotNull(selectedCartDto);

        assertTrue(cartDto.equals(selectedCartDto));
    }

    @Test
    public void 장바구니조회_userId () {
        CartDto cartDto = CartDto.create();
        cartDto.setUserId(TEST_USER);
        cartDto.setReg_id(TEST_USER);
        cartDto.setUp_id(TEST_USER);

        // insert
        Integer cartSeq = cartDao.insertAndReturnSeq(cartDto);
        assertNotNull(cartSeq);

        // give
        Map map = new HashMap<>();
        map.put("userId", TEST_USER);

        // select
        CartDto selectedCartDto = cartDao.selectByMap(map);
        assertNotNull(selectedCartDto);
    }

    @Test
    public void 장바구니조회_조건두개 () {
        CartDto cartDto = CartDto.create();
        cartDto.setUserId(TEST_USER);
        cartDto.setReg_id(TEST_USER);
        cartDto.setUp_id(TEST_USER);

        // insert
        Integer cartSeq = cartDao.insertAndReturnSeq(cartDto);
        assertNotNull(cartSeq);

        // give
        Map map = new HashMap<>();
        map.put("userId", TEST_USER);
        map.put("cart_seq", cartSeq);

        // select
        CartDto selectedCartDto = cartDao.selectByMap(map);
        assertNotNull(selectedCartDto);
    }

    @Test
    public void 장바구니조회_조건두개_userIdNull () {
        CartDto cartDto = CartDto.create();
        cartDto.setUserId(TEST_USER);
        cartDto.setReg_id(TEST_USER);
        cartDto.setUp_id(TEST_USER);

        // insert
        Integer cartSeq = cartDao.insertAndReturnSeq(cartDto);
        assertNotNull(cartSeq);

        // give
        Map map = new HashMap<>();
        map.put("userId", null);
        map.put("cart_seq", cartSeq);

        // select
        CartDto selectedCartDto = cartDao.selectByMap(map);
        assertNotNull(selectedCartDto);
    }




    @Test(expected = MyBatisSystemException.class)
    public void 장바구니조회_조회결과2개이상 () {
        CartDto firstCartDto = CartDto.create();
        firstCartDto.setUserId(TEST_USER);
        firstCartDto.setReg_id(TEST_USER);
        firstCartDto.setUp_id(TEST_USER);

        // insert
        Integer firstCartSeq = cartDao.insertAndReturnSeq(firstCartDto);
        assertNotNull(firstCartSeq);

        CartDto secondCartDto = CartDto.create();
        secondCartDto.setUserId(TEST_USER);
        secondCartDto.setReg_id(TEST_USER);
        secondCartDto.setUp_id(TEST_USER);

        // insert
        Integer secondCartSeq = cartDao.insertAndReturnSeq(secondCartDto);
        assertNotNull(secondCartSeq);

        // give
        Map map = new HashMap<>();
        map.put("userId", TEST_USER);

        CartDto selectedCartDto = cartDao.selectByMap(map);
        assertNotNull(selectedCartDto);

        fail();
    }

    @Test
    public void 장바구니삭제_withCartSeq () {
        CartDto cartDto = CartDto.create();
        cartDto.setUserId(TEST_USER);
        cartDto.setReg_id(TEST_USER);
        cartDto.setUp_id(TEST_USER);

        // insert
        Integer cartSeq = cartDao.insertAndReturnSeq(cartDto);
        assertNotNull(cartSeq);

        // delete condition
        Map deleteCondition = new HashMap<>();
        deleteCondition.put("cart_seq", cartSeq);

        // delete & assert
        int result = cartDao.deleteByMap(deleteCondition);
        assertEquals(1, result);

        // select condition
        Map selectCondition = new HashMap<>();
        selectCondition.put("cart_seq", cartSeq);

        // select & assert
        CartDto selectedCartDto = cartDao.selectByMap(selectCondition);
        assertNull(selectedCartDto);
    }

    @Test
    public void 장바구니삭제_withUserId () {
        CartDto cartDto = CartDto.create();
        cartDto.setUserId(TEST_USER);
        cartDto.setReg_id(TEST_USER);
        cartDto.setUp_id(TEST_USER);

        // insert
        Integer cartSeq = cartDao.insertAndReturnSeq(cartDto);
        assertNotNull(cartSeq);

        // delete condition
        Map deleteCondition = new HashMap<>();
        deleteCondition.put("userId", TEST_USER);

        // delete & assert
        int result = cartDao.deleteByMap(deleteCondition);
        assertEquals(1, result);

        // select condition
        Map selectCondition = new HashMap<>();
        selectCondition.put("userId", TEST_USER);

        // select & assert
        CartDto selectedCartDto = cartDao.selectByMap(selectCondition);
        assertNull(selectedCartDto);
    }
}
