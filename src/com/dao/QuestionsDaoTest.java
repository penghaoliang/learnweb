package com.dao;

import org.junit.Test;

import com.model.Options;
import com.model.Questions;

public class QuestionsDaoTest {

	@Test
	public void testInsertQuestions() {
		Questions q=new Questions();
		QuestionsDao d=new QuestionsDao();
		OptionsDao dao=new OptionsDao();
		q=d.getQuestions(3);
		System.out.println(q.getOptions().iterator().next().getoName());
	}

}
