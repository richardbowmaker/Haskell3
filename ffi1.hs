{-# LANGUAGE ForeignFunctionInterface #-}

import Foreign
import Foreign.C.Types

foreign import ccall "libc.h exp" c_exp :: Double -> Double


foreign import ccall "math.h sin"
     c_sin :: CDouble -> CDouble
     
     
fastsin :: Double -> Double
fastsin x = realToFrac (c_sin (realToFrac x))
     
     
     --
     --
     
     