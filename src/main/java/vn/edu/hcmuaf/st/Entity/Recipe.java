package vn.edu.hcmuaf.st.Entity;

import java.util.List;

public class Recipe {
    private int id, category_id;
    private String name, desc, thumbnail;
    private int number, time, level;
    private String created_at;
    private String created_by;
    private List<Ingredient> ingredientList;
    private String intro;

    public Recipe() {
    }

    public Recipe(int id, int category_id, String name, String desc, String thumbnail, int number, int time, int level, String created_at, String created_by, String intro) {
        this.id = id;
        this.category_id = category_id;
        this.name = name;
        this.desc = desc;
        this.thumbnail = thumbnail;
        this.number = number;
        this.time = time;
        this.level = level;
        this.created_at = created_at;
        this.created_by = created_by;
        this.intro = intro;
    }

    public Recipe(int id, int category_id, String name, String desc, String thumbnail, int number, int time, int level, String created_at, String created_by, List<Ingredient> ingredientList) {
        this.id = id;
        this.category_id = category_id;
        this.name = name;
        this.desc = desc;
        this.thumbnail = thumbnail;
        this.number = number;
        this.time = time;
        this.level = level;
        this.created_at = created_at;
        this.created_by = created_by;
        this.ingredientList = ingredientList;
    }

    public List<Ingredient> getIngredientList() {
        return ingredientList;
    }

    public void setIngredientList(List<Ingredient> ingredientList) {
        this.ingredientList = ingredientList;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int getTime() {
        return time;
    }

    public void setTime(int time) {
        this.time = time;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public String getCreated_by() {
        return created_by;
    }

    public void setCreated_by(String created_by) {
        this.created_by = created_by;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    @Override
    public String toString() {
        return "Recipe{" +
                "id=" + id +
                ", category_id=" + category_id +
                ", name='" + name + '\'' +
                ", desc='" + desc + '\'' +
                ", thumbnail='" + thumbnail + '\'' +
                ", number=" + number +
                ", time=" + time +
                ", level=" + level +
                ", created_at='" + created_at + '\'' +
                ", created_by='" + created_by + '\'' +
                ", ingredientList=" + ingredientList +
                ", intro='" + intro + '\'' +
                '}';
    }
}
