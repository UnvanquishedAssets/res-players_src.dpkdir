//   markShadow is the very cheap blurry blob underneath the player
gfx/players/common/shadow
{
	polygonOffset
	imageMinDimension 128
	{
		map gfx/players/common/shadow
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
		alphaGen vertex
	}
}

//   wake is the mark on water surfaces for paddling players
gfx/players/common/wake
{
	polygonOffset
	imageMinDimension 128
	{
		clampmap gfx/players/common/splash
		blendFunc GL_ONE GL_ONE
		rgbGen vertex
		tcmod rotate 250
		tcMod stretch sin .9 .1 0 .7
		rgbGen wave sin .7 .3 .25 .5
	}
	{
		clampmap gfx/players/common/splash
		blendFunc GL_ONE GL_ONE
		rgbGen vertex
		tcmod rotate -230
		tcMod stretch sin .9 .05 0 .9
		rgbGen wave sin .7 .3 .25 .4
	}
}
