data:extend{
  {
    type = "armor",
    name = "tiny-armor",
    icon = "__Tiny_Start__/graphics/icons/tiny-power-armor.png",
	icon_size = 32,
    flags = {"goes-to-main-inventory"},
    resistances =
    {
      {
        type = "physical",
        decrease = 3,
        percent = 20
      },
      {
        type = "acid",
        decrease = 3,
        percent = 30
      },
      {
        type = "explosion",
        decrease = 2,
        percent = 20
      },
      {
        type = "fire",
        decrease = 2,
        percent = 10
      }
    },
    durability = 5000,
    subgroup = "armor",
    order = "a[tiny-armor]",
    stack_size = 1,
    equipment_grid = "tiny-equipment-grid",
    inventory_size_bonus = 10
  },
  {
    type = "equipment-grid",
    name = "tiny-equipment-grid",
    width = 5,
    height = 4,
    equipment_categories = {"armor"}
  },
  {
    type = "generator-equipment",
    name = "micro-fusion-reactor-equipment",
    sprite =
    {
      filename = "__Tiny_Start__/graphics/equipment/tiny-fusion-reactor-equipment.png",
      width = 128,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "150kW",
    categories = {"armor"}
  },
  {
    type = "item",
    name = "micro-fusion-reactor-equipment",
    icon = "__Tiny_Start__/graphics/icons/tiny-fusion-reactor-equipment.png",
	icon_size = 32,
    placed_as_equipment_result = "micro-fusion-reactor-equipment",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "a[energy-source]-b[fusion-reactor]",
    stack_size = 20
  },
}  