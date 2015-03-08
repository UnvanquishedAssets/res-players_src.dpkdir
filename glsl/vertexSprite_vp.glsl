/*
===========================================================================
Copyright (C) 2010 Robert Beckebans <trebor_7@users.sourceforge.net>

This file is part of XreaL source code.

XreaL source code is free software; you can redistribute it
and/or modify it under the terms of the GNU General Public License as
published by the Free Software Foundation; either version 2 of the License,
or (at your option) any later version.

XreaL source code is distributed in the hope that it will be
useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with XreaL source code; if not, write to the Free Software
Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
===========================================================================
*/
// vertexSprite_vp.glsl - sprite vertex fetch

#if defined(USE_VERTEX_SPRITE)

attribute vec3 attr_Position;
attribute vec4 attr_Color;
attribute vec4 attr_Orientation;

uniform vec3 u_ViewOrigin;
uniform vec3 u_ViewUp;

float           u_DepthScale;

void VertexFetch(out vec4 position,
		 out localBasis normalBasis,
		 out vec4 color,
		 out vec2 texCoord,
		 out vec2 lmCoord)
{
	float radius = attr_Orientation.w;
	vec3 normal = normalize( u_ViewOrigin - attr_Position ), up, left;
	float s, c; // sin & cos of rotation factor

	// autogenerate texCoord from VertexID, generated coordinates are:
	//   0, 0
	//   1, 0
	//   1, 1
	//   0, 1
	texCoord = 0.5 * vec2( float( (gl_VertexID + 0) & 2),
			       float( (gl_VertexID + 1) & 2) );

	if( radius <= 0.0 ) {
		// autosprite2 mode, attr_Orientation.xyz contains the up-vector
		up = attr_Orientation.xyz;
		left = radius * normalize( cross( up, normal ) );
		position = vec4( attr_Position + (2.0 * texCoord.y - 1.0) * left, 1.0 );
	} else {
		// autosprite mode, attr_Orientation.x contains the rotation angle
		left = normalize( cross( u_ViewUp, normal ) );
		up = cross( left, normal );

		s = radius * sin( radians( attr_Orientation.x ) );
		c = radius * cos( radians( attr_Orientation.x ) );

		// rotate left and up vectors
		vec3 leftOrig = left;
		left = c * left + s * up;
		up = c * up - s * leftOrig;

		left *= 2.0 * texCoord.x - 1.0;
		up *= 2.0 * texCoord.y - 1.0;

		position = vec4( attr_Position + left + up, 1.0 );
	}
	normalBasis.normal = normal;
#if defined(USE_NORMAL_MAPPING)
	normalBasis.tangent = normalize( up );
	normalBasis.binormal = normalize( left );
#endif
	color    = attr_Color;
	lmCoord  = texCoord;

	u_DepthScale = 2.0 * radius;
}
#endif
