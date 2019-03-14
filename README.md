# What's this all about?

We've got new *Commodore 64* motherboards available ([C64 Reloaded](https://icomp.de/shop-icomp/en/shop/product/c64-reloaded-mk2.html) without chips, or [Ultimate 64](https://ultimate64.com/) with chips reimplemented in FPGA), we've got new cases ([Pixelwizard](https://shop.pixelwizard.eu/)), we've got a new keyboards ([MechBoard64](https://www.breadbox64.com/mods-for-sale/mechboard64/)), we've got various storage options (*Tapuino*, *SD2IEC*, *Pi1541*, *EasyFlash*, ...) - but we don't have the keycaps, the last element missing to build a brand new *C64*. This document describes a DIY solution I did for myself.

![variant 1](https://github.com/FeralChild64/MechBoard64-keycaps/blob/master/Photos/full-1-small.jpg "1U keys variant")
![variant 2](https://github.com/FeralChild64/MechBoard64-keycaps/blob/master/Photos/full-2-small.jpg "1.5U keys variant")
![keycaps 1](https://github.com/FeralChild64/MechBoard64-keycaps/blob/master/Photos/keycaps-1-small.jpg "keycaps")
![keycaps 2](https://github.com/FeralChild64/MechBoard64-keycaps/blob/master/Photos/keycaps-2-small.jpg "keycaps")

# Legal notice

License for the materials is available [here](https://github.com/FeralChild64/MechBoard64-keycaps/LEGAL.txt). It's as free and liberal, as I could reasonably make it. Of course, **I do not guarantee anything** - if you follow this guide and annihilate your kitten as a result, it's not my fault!

# Terminology

Some terms regarding keycaps, used in this document:

* **1U key** (sometimes referred as 1x1) is '1 unit' long key; look at the letter keys on a regular PC keyboard
* **1.5U key** (sometimes referred as 1x1.50)  is '1.5 unit long key' (look at *TAB* key on a PC keyboard), 2U is a '2 unit long key', etc.
* **R1 key** is a 'row 1 key' - look at *Z*, *X*, *C*, *V*, etc. keys
* **R2 key** is a 'row 2 key' - once again have a look at the keyboard, numbers (R4 keys) have different shape than *Z*, *X*, *C*, etc (which are R1 keys)
* **ANSI/ISO keyboards** - the most important difference is the *Enter* key, ISO has 'mirrored L shape' *Enter* key

# Imperfections

Since the goal was to provide a reasonably cheap DIY solution, the resulting keycaps won't be perfect. In particular, please be aware that:

* my adapters for 1.5U keycaps are really bad - after playing a little bit I decided to use 1U variants instead, the typing experience is much better 
* the original spacebar is 9U long, which is unusual for modern keyboard; I don't have a good solution for this, I was left with empty spaces around the spacebar, I haven't decided what to do about them yet
* the keycaps used are modern ones, their shape is not the same as originals
* for the *RETURN* key, R1 2U key is used (in reality it should be R2 2U, but such key cap is not available) - IMHO this isn't really a serious problem
* R1 1.5U keys are used for all the function keys - again, not a serious problem
* the printings on the keycaps are not exactly the same, as originals - it was never my goal; they are designed to resemble top-printed *C64C* keycaps, but use a slightly different font (original one was probably *ITC Avant Garde Gothic Pro Book*, available commercially; the breadbox *C64* with top&front printed keycaps probably used *Helvetica Narrow*), the graphics is probably also not exactly the same, etc.
* the keycaps are for ***MechBoard64* only!** they won't fit the original *C64* keyboard!

# Steps

### Ordering the actual keycaps

The most expensive part - you need to find out a supplier of custom-printed keycaps for the Cherry MX standard mechanical keyboards. I have choosen [Max Keyboard](http://www.maxkeyboard.com/) and the whole guide is focused on this particular supplier. If you decide to use other one (like [WASD Keybaords](https://www.wasdkeyboards.com/), you are basically on your own - but you are of course free to reuse my drawings/models (you will have to adapt them, though).

You need to order the following:

* one custom-printed color 104 ANSI Cherry MX keycap set with 6U spacebar; I know the *C64* does not have a numeric keypad, but we need them for keys like *RUN/STOP*, *SHIFT LOCK*, etc. - 87/88 keycap set do not have enough 1U keys; the 6U spacebar variant gives us four 1.5U R1 keys - for *SHIFT*'s and function keys
* (if you want 1.5U keycaps with adapters) two custom-printed color R1 1.5U keys - as the set above does not have enough of them
* (optional) additional 6.5U spacebar, if you want slightly smaller holes around the spacebar

I have created SVGs for the prints, based on the *Max Keyboard* templates (note - these are for *Max Keyboard* only and set-specific; if you choose another supplier, or if you want a translucent SHIFT LOCK key, you will ave to move the drawing to appropriate template). Unfortunately, you can use them directly - to prepare SVG file for printing, do the following:

* open the files in the *Inscape*, preferrably version *0.92.4* running on *Windows 10*
* check that everything is displayed correctly - you might need to manually adjust the character display positions (note, that playing card suits - hearts, diamonds, clubs, spades - are also font characters) or alter the design to suit your expectations
* select everything in the *YOUR DESIGN LAYER* layer and use *Path -> Object to path* option
* save the SVG file, and use this one for ordering

Why these steps are needed? Each computer program or operating system can render fonts differently (*Inkscape* can even use different fonts on different operating systems) - and the keycap supplier has to be sure its software renders the design in exactly the same way as the customer software. As long as external fonts are needed to render the design, this is simply not possible. The *Object to path* option actually renders the design to the vector format that does not need any external font anymore.

And here comes the problem - I would really like to supply files ready for immediate usage, but it seems I really can't. On my system, *Inkscape* has selected some font installed within the OS to be used as sans-serif. Which one? Probably it was *Arial* - but in reality, I don't really know. Does the font license allow me to redistribute characters rendered with it in the vector form? I don't know either :(

Some more notes about ordering the keycaps:

* look once again at your regular PC keyboard, especially letters **F**, **J**, and digit **5** on the numeric keypad; they probably have small protrusions, so that people touch typing (typing without looking at the keyboard) have some reference points; you probably don't want them on your *C64* keycaps (and you definitely don't want them on a numeric 5, which is our *RUN STOP* key) - I contacted *Max Keyboard* regarding the issue and they adviced me to input "no line and dot on R2 key" in the comment box while ordering;
* I ordered black + graphite keycaps, to match the original 'breadbox' colors (as I like them the most, and my *Pixelwizard* case is breadbox grey); I suppose ordering white keycaps to match white case wouldn't be a good idea - you can't be sure whether the 'white' from keycap supplier will really match your 'white' *C64* case
* when I ordered my keycap set, I was contacted back by *Max Keyboard* - while checking they noticed I ordered printing in black color on black keycaps (they corrected it manually after I replied there must have been some mistake and I want white printings on all the keys I ordered); most likely marking keys as being printed in white on their web page is not relevant for custom printing from SVG and you will have to change the color of the printings to white in the SVG files themselves using Inkscape (makes sense, if they allow multicolor print within one keycap)
* there actually is a supplier (*Pimp My Keyboard*), which offers 9U spacebar - but (as of writing this guide) they don't offer custom printed keycaps; I have tried to use their spacebar with *Max Keyboard* keycaps, but I honestly don't recommend such a mix; the material is visibly different, the keycap profile is different - *Pimp My Keyboard* spacebar is much higher than *Max Keyboard* keycaps, which makes typing on such mixed set really uncomfortable
* as you probably noticed, the main SVG contains much more keycaps than needed; thus I have drawn 1U function keys and others (in case my attempt to adapt 1.5U keycaps failed), also experimented with 1.75U R2 *RETURN* key and alternative *C=* key (*CMD* - for those wanting to avoid trademark restriction) - you don't have to remove the drawings, they don't add any extra cost

SVG files are available here: [main one](https://github.com/FeralChild64/MechBoard64-keycaps/blob/master/MaxKeyboard/src-keys-main.svg), [F5/F6 1.5U key](https://github.com/FeralChild64/MechBoard64-keycaps/blob/master/MaxKeyboard/src-keys-f5.svg), [F7/F8 1.5U key](https://github.com/FeralChild64/MechBoard64-keycaps/blob/master/MaxKeyboard/src-keys-f7.svg). Before ordering please once again check that I didn't any mistake, especially regarding the graphics.

### 1.5U keycap inserts

Unfortunately, the *MechBoard64* was created with the original *C64* keycaps in mind; none of the 1.5U keys (both *SHIFT*'s, *RESTORE*, *CONTROL*, all four function keys) will fit, their stems are not in line with the switches. There are 2 solutions possible:

* use the 1U keycaps instead - this is the solution I decided to use for now
* adapt the 1.5U keycaps to have the stem in a proper position

If you want to go with the second solution - be warned, my design is not too good, typing experience is terrible (key is not really stable, especially if you type the side without a stem). You will have to cut away the 1.5U key stems (I used a *Dremel* with a milling bit - it took me 5 minutes for the first one, but only 1 minute for the last one). 3D print new keycap inerts ([design I have tried](https://github.com/FeralChild64/MechBoard64-keycaps/blob/master/MaxKeyboard/print-adapter-my.stl), [it's source code](https://github.com/FeralChild64/MechBoard64-keycaps/blob/master/MaxKeyboard/print-adapter-my.scad), [design probably a little bit better but not tested yet](https://github.com/FeralChild64/MechBoard64-keycaps/blob/master/MaxKeyboard/print-adapter-untested.stl), [it's source code](https://github.com/FeralChild64/MechBoard64-keycaps/blob/master/MaxKeyboard/print-adapter-untested.scad) - both adapters are 22.5mm x 13.5mm x 5mm in size) and glue them in; be careful to glue them the proper way (especially the *RESTORE* key).

# Future

Well, I'm not 100% content from my set design, maybe some day I will make a new revision of the SVG files (not anytime soon, as delivery from USA to UE is insanely expensive). I still didn't properly solve the 1.5U keycaps problem. And I definitely need to find a way to nicely cover the holes around the spacebar :)
