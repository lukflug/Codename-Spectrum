# Codename Spectrum
An open-source operating system that I'm making as a side project. This isn't meant for real hardware.

Keep in mind all this is subject to change, especially since I rarely update the readme.

IMPORTANT: The OS is 32 bit, and it targeted for legacy hardware. Use a VM, preferably QEMU.

# The 'main' branch is usually is a WIP, refer to Releases for stable versions.

Use ```bash build.sh``` to build the OS.

# To-Do:

Get RTC time

Add support for backspace & shift in keyboard.

Make it limy limy limine time






Some of the code is taken from the following repo: https://github.com/arjun024/mkeykernel
Changes made: expanding on the kernel, taking the code for the keyboard handler, adding more IDT entries and a kernel panic screen, etc.

