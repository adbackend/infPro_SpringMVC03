package kr.inf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.inf.mapper.BoardMapper;
import kr.inf.model.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardMapper mapper;
	
	@Override
	public List<BoardVO> getList() {
		
		return mapper.getList();
	}

	@Override
	public void register(BoardVO board) {
		mapper.insert(board);
	}

	@Override
	public BoardVO get(int bno, String mode) {
		
		if(mode.equals("get")) {
			mapper.count(bno); //조회수 증가
		}
		return mapper.read(bno);
	}

	@Override
	public int remove(int bno) {
		return mapper.delete(bno);
	}

	@Override
	public int modify(BoardVO board) {
		return mapper.update(board);
	}

}
