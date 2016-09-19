data:extend({
  {
    type = "locomotive",
    name = "bullet-bill",
    icon = "__BulletBillTrain__/graphics/icon_bullet_bill.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 1, result = "bullet-bill"},
    mined_sound = {filename = "__BulletBillTrain__/sound/stop.ogg"},
    max_health = 1000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
    selection_box = {{-0.85, -2.6}, {0.9, 2.5}},
    drawing_box = {{-1, -4}, {1, 3}},
    weight = 1000,
    max_speed = 2.4,
    max_power = "3000kW",
    braking_force = 20,
    friction_force = 0.0015,
    -- this is a percentage of current speed that will be subtracted
    air_resistance = 0.002,
    connection_distance = 3.3,
    joint_distance = 4.6,
    energy_per_hit_point = 5,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 50
      },
      {
        type = "physical",
        decrease = 15,
        percent = 30
      },
      {
        type = "impact",
        decrease = 50,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30
      },
      {
        type = "acid",
        decrease = 10,
        percent = 20
      }
    },
    energy_source =
    {
      type = "burner",
      effectivity = 0.5,
      fuel_inventory_size = 4,
      smoke =
      {
        {
          name = "train-smoke",
          deviation = {0.3, 0.3},
          frequency = 100,
          position = {0, 0},
          starting_frame = 0,
          starting_frame_deviation = 60,
          height = 2,
          height_deviation = 0.5,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.1,
        }
      }
    },
    front_light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.0, -50},
        size = 8,
        intensity = 1.0
      }
    },
    back_light = {
      {
        minimum_darkness = 0.3,
        color = {r=1},
        shift = {0.0, 2.5},
        size = 2,
        intensity = 0.6,
        add_perspective = true
      }
    },
    stand_by_light = 
    {
      {
        minimum_darkness = 0.3,
        color = {b=1},
        shift = {-2.5, -1.0},
        size = 2,
        intensity = 0.5,
        add_perspective = true
      },
      {
        minimum_darkness = 0.3,
        color = {b=1},
        shift = {2.5, -1.0},
        size = 2,
        intensity = 0.5,
        add_perspective = true
      }
    },
    pictures =
    {
      priority = "very-low",
      width = 346,
      height = 248,
      direction_count = 36,
      filenames =
      {
        "__BulletBillTrain__/graphics/bullet_bill_01.png",
        "__BulletBillTrain__/graphics/bullet_bill_02.png",
        "__BulletBillTrain__/graphics/bullet_bill_03.png",
        "__BulletBillTrain__/graphics/bullet_bill_04.png"
      },
      line_length = 3,
      lines_per_file = 3,
      shift = {0.0, 0.0}
    },
    rail_category = "regular",

    stop_trigger =
    {
      -- left side
      {
        type = "create-smoke",
        repeat_count = 125,
        entity_name = "smoke-train-stop",
        initial_height = 0,
        -- smoke goes to the left
        speed = {-0.03, 0},
        speed_multiplier = 0.75,
        speed_multiplier_deviation = 1.1,
        offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
      },
      -- right side
      {
        type = "create-smoke",
        repeat_count = 125,
        entity_name = "smoke-train-stop",
        initial_height = 0,
        -- smoke goes to the right
        speed = {0.03, 0},
        speed_multiplier = 0.75,
        speed_multiplier_deviation = 1.1,
        offset_deviation = {{0.3, -2.7}, {0.75, 2.7}}
      },
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__BulletBillTrain__/sound/stop.ogg",
            volume = 0.6
          },
        }
      },
    },
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.85 },
    working_sound =
    {
      sound =
      {
        filename = "__BulletBillTrain__/sound/engine.ogg",
        volume = 0.4
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    sound_minimum_speed = 0.5;
  }
})
