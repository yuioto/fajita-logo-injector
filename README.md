# fajita-logo-injector
Oneplus6 and Oneplus6T splash screen modification.

The repository mirror from:
https://xdaforums.com/t/tool-mod-op6t-splash-screen-modification-linux.3874158

# use

## build

build
```bash
make
```

clean build
```bash
make clean
```

## repack boot.img

unpack logo.img

```bash
 ./op6.out -i logo.bin -d
```

Replace the image you want to modify, keeping the file name the same and the resolution the same.

repack logo.img

```bash
./op6 -i original.logo.bin -j 0
```

## get logo.img and flash logo.img

You need root get logo.img for you device.

get logo.img

```bash
adb shell "dd if=/dev/block/by-name/LOGO_a of=/sdcard/logo.img" # If your shell has root by default.

# If your shell does not have root by default.
adb shell
su
dd if=/dev/block/by-name/LOGO_a of=/sdcard/logo.img

# pull logo.img
adb pull /sdcard/logo.img
adb shell rm /sdcard/logo.img # remove logo.img from you phone.
```

flash you repack logo.img

```bash
adb reboot bootloader
fastboot flash LOGO modified.logo.bin # op6.out will make new logo.img: modified.logo.bin
# or you can only flash _a or _b, like this:
fastboot flash LOGO_a modified.logo.bin
fastboot flash LOGO_b modified.logo.bin
```

# License

The original author did not state the license.

I wrote a Makefile for this program, and the copyright of this Makefile belongs to the public domain.
