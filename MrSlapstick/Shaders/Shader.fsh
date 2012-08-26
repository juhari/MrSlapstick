//
//  Shader.fsh
//  MrSlapstick
//
//  Created by Juha Riippi on 8/25/12.
//  Copyright (c) 2012 Juha Riippi. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
