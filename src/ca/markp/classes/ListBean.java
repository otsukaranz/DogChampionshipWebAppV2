package ca.markp.classes;

public class ListBean {
	private int total;
	private String dog_breed;
	private int classMale;
	private int classFemale;
	private int specialtyMale;
	private int specialtyFemale;
	
	
	
	public ListBean() {
		super();
	}
	public ListBean(int total, String dog_breed, int classMale, int classFemale, int specialtyMale,
			int specialtyFemale) {
		super();
		this.total = total;
		this.dog_breed = dog_breed;
		this.classMale = classMale;
		this.classFemale = classFemale;
		this.specialtyMale = specialtyMale;
		this.specialtyFemale = specialtyFemale;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public String getDog_breed() {
		return dog_breed;
	}
	public void setDog_breed(String dog_breed) {
		this.dog_breed = dog_breed;
	}
	public int getClassMale() {
		return classMale;
	}
	public void setClassMale(int classMale) {
		this.classMale = classMale;
	}
	public int getClassFemale() {
		return classFemale;
	}
	public void setClassFemale(int classFemale) {
		this.classFemale = classFemale;
	}
	public int getSpecialtyMale() {
		return specialtyMale;
	}
	public void setSpecialtyMale(int specialtyMale) {
		this.specialtyMale = specialtyMale;
	}
	public int getSpecialtyFemale() {
		return specialtyFemale;
	}
	public void setSpecialtyFemale(int specialtyFemale) {
		this.specialtyFemale = specialtyFemale;
	}
	
	@Override
	public String toString() {
		return "ListBean [total=" + total + ", dog_breed=" + dog_breed + ", classMale=" + classMale + ", classFemale="
				+ classFemale + ", specialtyMale=" + specialtyMale + ", specialtyFemale=" + specialtyFemale + "]";
	}
	
	
}	
