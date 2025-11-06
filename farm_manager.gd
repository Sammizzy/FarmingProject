class_name FarmManager
extends Node

enum TileType
{
	GRASS,
	TILLED,
	TILLED_WATERED
}


class TileInfo:
	var tilled : bool
	var watered : bool
	var crop : Crop

@onready var tile_map : TileMapLayer = $FarmTileMap
var tile_info : Dictionary[Vector2i, TileInfo]
var crop_scene : PackedScene = preload("res://Scenes/crop.tscn")

var tile_atlas_coords : Dictionary[TileType, Vector2i] = {
	TileType.GRASS: Vector2i(0,0),
	TileType.TILLED: Vector2i(1,0),
	TileType.TILLED_WATERED: Vector2i(0,1)
	
}
#all functions set up to control aspects such as state of tile and player position and harvesting
func _ready():
	for cell in tile_map.get_used_cells()
		tile_info[cell] = TileInfo.new()
	
func _on_new_day (day: int):
	pass

func _on_harvest_crop (crop : Crop):
	pass

func try_till_tile (player_pos : Vector2):
	pass
	
func try_water_tile (player_pos : Vector2):
	pass
	
func try_seed_tile (player_pos : Vector2, crop_data : CropData):
	pass

func try_harvest_tile (player_pos : Vector2):
	pass
	
	
func is_tile_watered(pos : Vector2) -> bool:
	return false
	
func _set_tile_state(coords : Vector2i, tile_type : TileType):
	tile_map.set.cell(coords, 0, tile_atlas_coords[tile_type])
	#sets the tile state depending on variable such as watered and tilled
	match tile_type:
		TileType.GRASS:
			tile_info[coords].tilled = false
			tile_info[coords].watered = false
		TileType.TILLED:
			tile_info[coords].tilled = true
			tile_info[coords].watered = false
		TileType.watered:
			tile_info[coords].tilled = true
			tile_info[coords].watered = true
			
	
