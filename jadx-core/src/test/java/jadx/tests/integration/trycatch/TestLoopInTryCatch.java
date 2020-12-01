package jadx.tests.integration.trycatch;

import jadx.tests.api.SmaliTest;

import org.junit.jupiter.api.Test;

import static jadx.tests.api.utils.assertj.JadxAssertions.assertThat;

public class TestLoopInTryCatch extends SmaliTest {
	@Test
	public void test() {
		assertThat(getClassNodeFromSmali())
				.code()
				.containsOne("while (");
	}
}
