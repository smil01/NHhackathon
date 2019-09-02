package Util;

import java.util.ArrayList;

public class cursingUtill {
	private static ArrayList<cursingDTO> list = cursingDAO.getDao().selectAll();

	public static UtillDTO getChage(String targetContent) {
		int count = 0;
		String chage = targetContent;

		for (cursingDTO temp : list) {
			String temp2 = chage;
			while (true) {
				if (temp2.indexOf(temp.getContent()) >= 0) {
					count += 1;
					temp2 = temp2.substring(temp2.indexOf(temp.getContent()) + 1, temp2.length());					
				} else {
					break;
				}
			}

			chage = chage.replaceAll(temp.getContent(), temp.getChange());
		}

		return new UtillDTO(targetContent, chage, count);
	}
}
