package pend.aurrius.home.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;






@AllArgsConstructor
@NoArgsConstructor
@Data
public class QBoardDto {

	private int qnum; // 게시판 글 번호
	private String qid; // 글쓴이 아이디
	private String qname; // 글쓴이 이름
	private String qcontent; // 질문내용 
	private String qemail; // 글쓴이 이메일
	private String qdate; // 글 등록 일시
	
}
