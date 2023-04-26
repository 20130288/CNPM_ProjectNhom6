package vn.edu.hcmuaf.st.Entity;

public class Ingredient {
    private int id, recipe_id;
    private String quantity, unit, ingredient;

    public Ingredient() {
    }

    public Ingredient(int id, int recipe_id, String quantity, String unit, String ingredient) {
        this.id = id;
        this.recipe_id = recipe_id;
        this.quantity = quantity;
        this.unit = unit;
        this.ingredient = ingredient;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRecipe_id() {
        return recipe_id;
    }

    public void setRecipe_id(int recipe_id) {
        this.recipe_id = recipe_id;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getIngredient() {
        return ingredient;
    }

    public void setIngredient(String ingredient) {
        this.ingredient = ingredient;
    }

    @Override
    public String toString() {
        return "Ingredient{" +
                "id=" + id +
                ", recipe_id=" + recipe_id +
                ", quantity='" + quantity + '\'' +
                ", unit='" + unit + '\'' +
                ", ingredient='" + ingredient + '\'' +
                '}';
    }
}
