apiRequest(0.1)

local eeObj = getEEObject()
local emuObj = getEmuObject()
--Ratchet & Clank - Up Your Arsenal (SCUS-97353)
--COP2 PATCH
local patcher = function()
--jmp
eeObj.WriteMem32(0x0011F38C, 0x0803FFC8)
--vcallms cycle waster
eeObj.WriteMem32(0x000FFA00, 0x241B0060) --Todo: lower wasters to something optimal
eeObj.WriteMem32(0x000FFA04, 0x4A000038)
eeObj.WriteMem32(0x000FFA08, 0x277BFFFF)
eeObj.WriteMem32(0x000FFA0C, 0x1760FFFE)
eeObj.WriteMem32(0x000FFA18, 0x03E00008)
eeObj.WriteMem32(0x000FFA1C, 0x241F0000)
--vi01 first cycle waster
eeObj.WriteMem32(0x000FFA24, 0x241B0001)
eeObj.WriteMem32(0x000FFA28, 0x277BFFFF)
eeObj.WriteMem32(0x000FFA2C, 0x1760FFFE)
eeObj.WriteMem32(0x000FFA34, 0x48C00800)
--vi01 second cycle waster
eeObj.WriteMem32(0x000FFA38, 0x241B0100)
eeObj.WriteMem32(0x000FFA3C, 0x277BFFFF)
eeObj.WriteMem32(0x000FFA40, 0x1760FFFE)
eeObj.WriteMem32(0x000FFA4C, 0x03E00008)
eeObj.WriteMem32(0x000FFA50, 0x241F0000)
--vi02 first cycle waster
eeObj.WriteMem32(0x000FFA58, 0x241B0001)
eeObj.WriteMem32(0x000FFA5C, 0x277BFFFF)
eeObj.WriteMem32(0x000FFA60, 0x1760FFFE)
eeObj.WriteMem32(0x000FFA68, 0x48C01000)
--vi02 second cycle waster
eeObj.WriteMem32(0x000FFA6C, 0x241B0100)
eeObj.WriteMem32(0x000FFA70, 0x277BFFFF)
eeObj.WriteMem32(0x000FFA74, 0x1760FFFE)
eeObj.WriteMem32(0x000FFA80, 0x03E00008)
eeObj.WriteMem32(0x000FFA84, 0x241F0000)
--patcher
eeObj.WriteMem32(0x000FFCA8, 0x3C150C03)
eeObj.WriteMem32(0x000FFCAC, 0x36B5FE80)
eeObj.WriteMem32(0x000FFCB0, 0x8EF60004)
eeObj.WriteMem32(0x000FFCB4, 0x12D500B1)
eeObj.WriteMem32(0x000FFCC0, 0xAEF50004)
eeObj.WriteMem32(0x000FFCC4, 0x3C150C03)
eeObj.WriteMem32(0x000FFCC8, 0x36B5FE89)
eeObj.WriteMem32(0x000FFCCC, 0xAEF500BC)
eeObj.WriteMem32(0x000FFCD0, 0xAEF501FC)
eeObj.WriteMem32(0x000FFCD4, 0xAEF50354)
eeObj.WriteMem32(0x000FFCD8, 0xAEF50494)
eeObj.WriteMem32(0x000FFCDC, 0xAEF505EC)
eeObj.WriteMem32(0x000FFCE0, 0xAEF5072C)
eeObj.WriteMem32(0x000FFCE4, 0x3C150C03)
eeObj.WriteMem32(0x000FFCE8, 0x36B5FE96)
eeObj.WriteMem32(0x000FFCEC, 0xAEF5015C)
eeObj.WriteMem32(0x000FFCF0, 0xAEF502AC)
eeObj.WriteMem32(0x000FFCF4, 0xAEF503F4)
eeObj.WriteMem32(0x000FFCF8, 0xAEF50544)
eeObj.WriteMem32(0x000FFCFC, 0xAEF5068C)
eeObj.WriteMem32(0x000FFD00, 0xAEF507E4)
eeObj.WriteMem32(0x000FFD04, 0x1000009D)
--Pointer and misc
eeObj.WriteMem32(0x000FFEF0, 0x10000022)
eeObj.WriteMem32(0x000FFF20, 0x3C1B000F)
eeObj.WriteMem32(0x000FFF24, 0x377BFF00)
eeObj.WriteMem32(0x000FFF28, 0xAF770000)
eeObj.WriteMem32(0x000FFF2C, 0xAF760004)
eeObj.WriteMem32(0x000FFF30, 0xAF750008)
eeObj.WriteMem32(0x000FFF34, 0xAF74000C)
eeObj.WriteMem32(0x000FFF38, 0x3C1701FF)
eeObj.WriteMem32(0x000FFF3C, 0x36F7FCF0)
eeObj.WriteMem32(0x000FFF48, 0x8EF70000)
eeObj.WriteMem32(0x000FFF4C, 0x26F77000)
eeObj.WriteMem32(0x000FFF50, 0x3C157120)
eeObj.WriteMem32(0x000FFF54, 0x36B5CDA8)
eeObj.WriteMem32(0x000FFF68, 0x8EF40000)
eeObj.WriteMem32(0x000FFF6C, 0x1295FF4E)
eeObj.WriteMem32(0x000FFF74, 0x1000FFFC)
eeObj.WriteMem32(0x000FFF78, 0x26F70004)
eeObj.WriteMem32(0x000FFF80, 0x8F770000)
eeObj.WriteMem32(0x000FFF84, 0x8F760004)
eeObj.WriteMem32(0x000FFF88, 0x8F750008)
eeObj.WriteMem32(0x000FFF8C, 0x8F74000C)
eeObj.WriteMem32(0x000FFF90, 0x08047CE4)
end
emuObj.AddVsyncHook(patcher)

-- Optimized:

apiRequest(0.1)

local eeObj = getEEObject()
local emuObj = getEmuObject()

local patcher = function()
--jmp
eeObj.WriteMem32(0x0011F38C, 0x0803FFE6)
--vcallms
eeObj.WriteMem32(0x000FFA00, 0x241B0016)
eeObj.WriteMem32(0x000FFA04, 0x4A000038)
eeObj.WriteMem32(0x000FFA08, 0x277BFFFF)
eeObj.WriteMem32(0x000FFA0C, 0x1760FFFE)
eeObj.WriteMem32(0x000FFA18, 0x03E00008)
eeObj.WriteMem32(0x000FFA1C, 0x241F0000)
--VI01
eeObj.WriteMem32(0x000FFA34, 0x48C00800)
eeObj.WriteMem32(0x000FFA38, 0x241B0080)
eeObj.WriteMem32(0x000FFA3C, 0x277BFFFF)
eeObj.WriteMem32(0x000FFA40, 0x1760FFFE)
eeObj.WriteMem32(0x000FFA4C, 0x03E00008)
eeObj.WriteMem32(0x000FFA50, 0x241F0000)
--VI02
eeObj.WriteMem32(0x000FFA68, 0x48C01000)
eeObj.WriteMem32(0x000FFA6C, 0x241B0100)
eeObj.WriteMem32(0x000FFA70, 0x277BFFFF)
eeObj.WriteMem32(0x000FFA74, 0x1760FFFE)
eeObj.WriteMem32(0x000FFA80, 0x03E00008)
eeObj.WriteMem32(0x000FFA84, 0x241F0000)
--Patcher
eeObj.WriteMem32(0x000FFCA8, 0x3C150C03)
eeObj.WriteMem32(0x000FFCAC, 0x36B5FE80)
eeObj.WriteMem32(0x000FFCB0, 0x8EF60004)
eeObj.WriteMem32(0x000FFCB4, 0x12D500B1)
eeObj.WriteMem32(0x000FFCC0, 0xAEF50004)
eeObj.WriteMem32(0x000FFCC4, 0x3C150C03)
eeObj.WriteMem32(0x000FFCC8, 0x36B5FE89)
eeObj.WriteMem32(0x000FFCCC, 0xAEF500BC)
eeObj.WriteMem32(0x000FFCD0, 0xAEF501FC)
eeObj.WriteMem32(0x000FFCD4, 0xAEF50354)
eeObj.WriteMem32(0x000FFCD8, 0xAEF50494)
eeObj.WriteMem32(0x000FFCDC, 0xAEF505EC)
eeObj.WriteMem32(0x000FFCE0, 0xAEF5072C)
eeObj.WriteMem32(0x000FFCE4, 0x3C150C03)
eeObj.WriteMem32(0x000FFCE8, 0x36B5FE96)
eeObj.WriteMem32(0x000FFCEC, 0xAEF5015C)
eeObj.WriteMem32(0x000FFCF0, 0xAEF502AC)
eeObj.WriteMem32(0x000FFCF4, 0xAEF503F4)
eeObj.WriteMem32(0x000FFCF8, 0xAEF50544)
eeObj.WriteMem32(0x000FFCFC, 0xAEF5068C)
eeObj.WriteMem32(0x000FFD00, 0xAEF507E4)
eeObj.WriteMem32(0x000FFD04, 0x1000009D)
--Pointer and misc
eeObj.WriteMem32(0x000FFF20, 0x3C1B000F)
eeObj.WriteMem32(0x000FFF24, 0x377BFF00)
eeObj.WriteMem32(0x000FFF28, 0xAF770000)
eeObj.WriteMem32(0x000FFF2C, 0xAF760004)
eeObj.WriteMem32(0x000FFF30, 0xAF750008)
eeObj.WriteMem32(0x000FFF34, 0xAF74000C)
eeObj.WriteMem32(0x000FFF38, 0x3C1701FF)
eeObj.WriteMem32(0x000FFF3C, 0x36F7FCF0)
eeObj.WriteMem32(0x000FFF48, 0x8EF70000)
eeObj.WriteMem32(0x000FFF4C, 0x26F77000)
eeObj.WriteMem32(0x000FFF50, 0x3C157120)
eeObj.WriteMem32(0x000FFF54, 0x36B5CDA8)
eeObj.WriteMem32(0x000FFF68, 0x8EF40000)
eeObj.WriteMem32(0x000FFF6C, 0x1295FF4E)
eeObj.WriteMem32(0x000FFF74, 0x1000FFFC)
eeObj.WriteMem32(0x000FFF78, 0x26F70004)
eeObj.WriteMem32(0x000FFF7C, 0xAF77FFF0)
eeObj.WriteMem32(0x000FFF80, 0x8F770000)
eeObj.WriteMem32(0x000FFF84, 0x8F760004)
eeObj.WriteMem32(0x000FFF88, 0x8F750008)
eeObj.WriteMem32(0x000FFF8C, 0x8F74000C)
eeObj.WriteMem32(0x000FFF90, 0x08047CE4)
eeObj.WriteMem32(0x000FFF98, 0x3C1B000F)
eeObj.WriteMem32(0x000FFF9C, 0x377BFF00)
eeObj.WriteMem32(0x000FFFA0, 0x3C027120)
eeObj.WriteMem32(0x000FFFA4, 0x3442CDA8)
eeObj.WriteMem32(0x000FFFA8, 0x8F7BFFF0)
eeObj.WriteMem32(0x000FFFAC, 0x8F7B0000)
eeObj.WriteMem32(0x000FFFB0, 0x1762FFDB)
eeObj.WriteMem32(0x000FFFB4, 0x241B0000)
eeObj.WriteMem32(0x000FFFB8, 0x08047CE4)
end
emuObj.AddVsyncHook(patcher)

