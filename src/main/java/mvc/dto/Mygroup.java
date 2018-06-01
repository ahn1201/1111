package mvc.dto;

public class Mygroup {
	
	private int group_no; 
    private String group_id;
    private String location;
    private int manager_id;
    private String maincag;
    private String minicag;
    private int personnel;
    private String chat_id;
    private String intro;
    private String u_id;

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public int getGroup_no() {
		return group_no;
	}

	public void setGroup_no(int group_no) {
		this.group_no = group_no;
	}

	public String getGroup_id() {
		return group_id;
	}

	public void setGroup_id(String group_id) {
		this.group_id = group_id;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getManager_id() {
		return manager_id;
	}

	public void setManager_id(int manager_id) {
		this.manager_id = manager_id;
	}

	public String getMaincag() {
		return maincag;
	}

	public void setMaincag(String maincag) {
		this.maincag = maincag;
	}

	public String getMinicag() {
		return minicag;
	}

	public void setMinicag(String minicag) {
		this.minicag = minicag;
	}

	public int getPersonnel() {
		return personnel;
	}

	public void setPersonnel(int personnel) {
		this.personnel = personnel;
	}

	public String getChat_id() {
		return chat_id;
	}

	public void setChat_id(String chat_id) {
		this.chat_id = chat_id;
	}

	@Override
	public String toString() {
		return "[ group_no = " + group_no 
				+", group_id = " + group_id 
				+", location = " + location
				+", manager_id = " + manager_id
				+", maincag = " + maincag
				+", minicag = " + minicag
				+", personnel = " + personnel
				+", chat_id = " + chat_id
				+", intro = " + intro
				+", u_id = " + u_id
				+"]";
		
	}
}
