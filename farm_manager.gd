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
