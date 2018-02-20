/*==================================================
# File Name    : Class.java
#
# Purpose      : implements a Class Object
#
# Author       : Nicholas Boschman, VIU
#
# System       : Java (Linux)
#
#----------------------------------------------------
# Revision List
# Version      Author  Date    Changes
# 0.1          NB      Feb 18  0.1
====================================================*/

import java.util.*;

public class Class extends Elective{

	private enum SEMESTER {
		FALL, SPRING, SUMMER
	}

	private String description;
	private String number; //ie 375 //using Strings for compatibility
	private TreeSet<SEMESTER> availability; //i.e when can this course be taken
	

	//Main for interactive testing of the class
	public static void main(String[] args) {
		
	}
}