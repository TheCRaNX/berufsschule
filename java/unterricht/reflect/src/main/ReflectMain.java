package reflect.src.main;

import java.lang.reflect.*;

public class ReflectMain {

	public static void main(String[] args) {
		try {
			Class xyz = Class.forName(("reflect.src.main.UnbekannteKlasse"));

			String className = xyz.getName();
			System.out.println(className);
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}