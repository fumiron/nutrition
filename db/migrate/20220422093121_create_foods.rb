class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string     :name
      t.float    :calorie
      t.float    :protein
      t.float    :fat
      t.float    :saturated_fat
      t.float    :n_6_fat
      t.float    :n_3_fat
      t.float    :cholesterol
      t.float    :carbohydrate
      t.float    :dietary_fiber
      t.float    :vitamin_a
      t.float    :vitamin_d
      t.float    :vitamin_e
      t.float    :vitamin_k
      t.float    :vitamin_b1
      t.float    :vitamin_b2
      t.float    :vitamin_b6
      t.float    :vitamin_b12
      t.float    :vitamin_c
      t.float    :niacin
      t.float    :folate
      t.float    :pantothenic
      t.float    :biotin
      t.float    :sodium
      t.float    :potassium
      t.float    :calcium
      t.float    :magnesium
      t.float    :phosphorus
      t.float    :iron
      t.float    :zinc
      t.float    :copper
      t.float    :manganese
      t.float    :iodine
      t.float    :selenium
      t.float    :chromium
      t.float    :molybdenum
      t.float    :salt
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
