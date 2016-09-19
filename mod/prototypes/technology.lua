data:extend({
  {
      type = "technology",
      name = "bullet-bill-tech",
      icon = "__BulletBillTrain__/graphics/tech_bullet_bill.png",
      effects =
      {
        {
            type = "unlock-recipe",
            recipe = "bullet-bill"
        }
      },
      prerequisites = {"military-2", "railway"},
      unit =
      {
        count = 10,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
        },
        time = 20
      }
  }
})
