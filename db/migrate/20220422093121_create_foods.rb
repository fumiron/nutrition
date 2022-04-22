class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.integer    :calorie
      t.integer    :protein
      t.integer    :fat
      t.integer    :saturated_fat
      t.integer    :n_6_fat
      t.integer    :n_3_fat
      t.integer    :cholesterol
      t.integer    :carbohydrate
      t.integer    :dietary_fiber
      t.integer    :vitamin_a
      t.integer    :vitamin_d
      t.integer    :vitamin_e
      t.integer    :vitamin_k
      t.integer    :vitamin_b1
      t.integer    :vitamin_b2
      t.integer    :vitamin_b6
      t.integer    :vitamin_b12
      t.integer    :vitamin_c
      t.integer    :niacin
      t.integer    :folate
      t.integer    :pantothenic
      t.integer    :natrium
      t.integer    :potassium
      t.integer    :calcium
      t.integer    :magnesium
      t.integer    :phosphorus
      t.integer    :iron
      t.integer    :zinc
      t.integer    :copper
      t.integer    :manganese
      t.integer    :iodine
      t.integer    :selenium
      t.integer    :chromium
      t.integer    :molybdenum
      t.references :user, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
