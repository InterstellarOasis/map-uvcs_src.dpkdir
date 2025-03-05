textures/uvcs/ladder
{
	qer_editorImage textures/common_src/ladder_p
	qer_trans .5

	surfaceparm ladder
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm playerclip
	surfaceparm trans
}

textures/uvcs/plasma_pipe_orange
{
	qer_editorImage textures/uvcs/plasma_pipe_orange_p
	qer_trans .7

	surfaceparm nonsolid
	surfaceparm noimpact
	surfaceparm nomarks
	cull none

	q3map_surfacelight 150
	// radioactive green #00f200
	q3map_lightRGB 1.000 0.729 0.376

	{
		map textures/uvcs/plasma_pipe_orange_b
		tcmod scroll 0 .5
		blend blend
	}


}

// plasma whirlpool
textures/uvcs/plasma_whirl_orange
{
	qer_editorImage textures/uvcs/plasma_whirl_orange_p

	q3map_surfacelight 150
	// radioactive green #00f200
	q3map_lightRGB 1.000 0.729 0.376
	q3map_globaltexture

	surfaceparm nonsolid
	surfaceparm noimpact
	surfaceparm nomarks

	cull none

	// deformVertexes wave <div> <func> <base> <amplitude> <phase> <freq>
	deformVertexes wave 64 sin .25 .25 0 .5

	{
		map textures/uvcs/plasma_whirl_orange_b
		// tcmod scale .5 .5
		// tcmod turb 1 .5 0 .1
		tcmod rotate 20
		blend blend
	}
}

//nonsolid base1a for hallway arches
textures/uvcs/base1a_nonsolid
{
	qer_editorImage textures/shared_trak5_src/base1a_d
	surfaceparm nonsolid

	{
		diffuseMap textures/shared_trak5_src/base1a_d
		normalMap textures/shared_trak5_src/base1_n
	}
}
//common textures that q3map2 can't find for some reason

textures/uvcs/fullclip
{
	qer_editorImage textures/common_src/fullclip_p
	qer_trans .4

	surfaceparm nodraw
	//surfaceparm playerclip // see comment above shader
	surfaceparm trans
}

textures/uvcs/playerclip
{
	qer_editorImage textures/common_src/playerclip_p
	qer_trans .4

	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm playerclip
	surfaceparm trans
}

textures/uvcs/caulk
{
	qer_editorImage textures/common_src/caulk_p

	surfaceparm nodraw
}

textures/uvcs/proto_fence
{
	qer_editorimage textures/nexus6/objects_fence
	surfaceparm noimpact
	surfaceparm playerclip
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nonsolid
	cull none
	nopicmip
	{
		map textures/nexus6/objects_fence
		tcMod scale 3 3
		blendFunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/uvcs/nobuild
{
	qer_editorImage textures/common_src/nobuild_p
	qer_trans .5

	surfaceparm nobuild
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm trans
}
