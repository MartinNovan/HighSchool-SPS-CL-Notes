# Úvod do Linuxu
## Příkazy:
-  Zjištění HW informací: 
	- `inxi -Fa` -> `inxi` je balíček, `-Fa` znamená `Full` a `All`
```bash
❯ inxi -Fa
System:
  Host: archlinux Kernel: 6.12.44-1-lts arch: x86_64 bits: 64 compiler: gcc
    v: 15.2.1 clocksource: tsc avail: acpi_pm
    parameters: BOOT_IMAGE=/vmlinuz-linux-lts
    root=UUID=315e644d-3e71-4e48-8267-8db4da5be4ae rw zswap.enabled=0
    rootfstype=ext4 loglevel=3 quiet
  Desktop: GNOME v: 48.4 tk: GTK v: 3.24.50 wm: gnome-shell
    tools: gsd-screensaver-proxy dm: GDM v: 48.0 Distro: Arch Linux
Machine:
  Type: Laptop System: LENOVO product: 21KH v: ThinkBook 16 G6 IRL
    serial: <superuser required> Chassis: type: 10 v: ThinkBook 16 G6 IRL
    serial: <superuser required>
  Mobo: LENOVO model: LNVNB161216 v: SDK0T76530 WIN
    serial: <superuser required> part-nu: LENOVO_MT_21KH_BU_idea_FM_ThinkBook
    16 G6 IRL uuid: <superuser required> UEFI: LENOVO v: MMCN47WW
    date: 07/21/2025
Battery:
  ID-1: BAT0 charge: 21.3 Wh (55.6%) condition: 38.3/45.0 Wh (85.2%)
    power: 5.9 W volts: 11.6 min: 11.5 model: Sunwoda L22D3PE0 type: Li-poly
    serial: 26 status: discharging cycles: 704
CPU:
  Info: model: 13th Gen Intel Core i5-1335U bits: 64 type: MST AMCP
    arch: Raptor Lake level: v3 note: check built: 2022+ process: Intel 7 (10nm)
    family: 6 model-id: 0xBA (186) stepping: 3 microcode: 0x5102
  Topology: cpus: 1x dies: 1 clusters: 4 cores: 10 threads: 12 mt: 2 tpc: 2
    st: 8 smt: enabled cache: L1: 928 KiB desc: d-8x32 KiB, 2x48 KiB; i-2x32
    KiB, 8x64 KiB L2: 6.5 MiB desc: 2x1.2 MiB, 2x2 MiB L3: 12 MiB
    desc: 1x12 MiB
  Speed (MHz): avg: 400 min/max: 400/4600:3400 scaling: driver: intel_pstate
    governor: powersave cores: 1: 400 2: 400 3: 400 4: 400 5: 400 6: 400 7: 400
    8: 400 9: 400 10: 400 11: 400 12: 400 bogomips: 59916
  Flags: avx avx2 ht lm nx pae sse sse2 sse3 sse4_1 sse4_2 ssse3 vmx
  Vulnerabilities:
  Type: gather_data_sampling status: Not affected
  Type: indirect_target_selection status: Not affected
  Type: itlb_multihit status: Not affected
  Type: l1tf status: Not affected
  Type: mds status: Not affected
  Type: meltdown status: Not affected
  Type: mmio_stale_data status: Not affected
  Type: reg_file_data_sampling mitigation: Clear Register File
  Type: retbleed status: Not affected
  Type: spec_rstack_overflow status: Not affected
  Type: spec_store_bypass mitigation: Speculative Store Bypass disabled via
    prctl
  Type: spectre_v1 mitigation: usercopy/swapgs barriers and __user pointer
    sanitization
  Type: spectre_v2 mitigation: Enhanced / Automatic IBRS; IBPB:
    conditional; PBRSB-eIBRS: SW sequence; BHI: BHI_DIS_S
  Type: srbds status: Not affected
  Type: tsa status: Not affected
  Type: tsx_async_abort status: Not affected
Graphics:
  Device-1: Intel Raptor Lake-P [UHD Graphics] vendor: Lenovo driver: i915
    v: kernel alternate: xe arch: Xe process: Intel 10nm built: 2020-21 ports:
    active: eDP-1 empty: DP-1, DP-2, DP-3, DP-4, HDMI-A-1 bus-ID: 00:02.0
    chip-ID: 8086:a721 class-ID: 0300
  Device-2: Syntek Integrated Camera driver: uvcvideo type: USB rev: 2.0
    speed: 480 Mb/s lanes: 1 mode: 2.0 bus-ID: 3-6:2 chip-ID: 174f:181d
    class-ID: fe01 serial: 0001
  Display: wayland server: X.org v: 1.21.1.18 with: Xwayland v: 24.1.8
    compositor: gnome-shell driver: gpu: i915 display-ID: 0
  Monitor-1: eDP-1 model: ChiMei InnoLux 0x162b built: 2022 res: 1920x1200
    dpi: 142 gamma: 1.2 size: 344x215mm (13.54x8.46") diag: 406mm (16")
    ratio: 16:10 modes: 1920x1200
  API: EGL Message: EGL data requires eglinfo. Check --recommends.
  Info: Tools: x11: xprop,xrandr
Audio:
  Device-1: Intel Raptor Lake-P/U/H cAVS vendor: Lenovo
    driver: sof-audio-pci-intel-tgl alternate: snd_hda_intel, snd_soc_avs,
    snd_sof_pci_intel_tgl bus-ID: 00:1f.3 chip-ID: 8086:51ca class-ID: 0401
  API: ALSA v: k6.12.44-1-lts status: kernel-api tools: N/A
  Server-1: PipeWire v: 1.4.7 status: active with: 1: pipewire-pulse
    status: active 2: wireplumber status: active 3: pipewire-alsa type: plugin
    4: pw-jack type: plugin tools: pactl,pw-cat,pw-cli,wpctl
Network:
  Device-1: Intel Raptor Lake PCH CNVi WiFi driver: iwlwifi v: kernel
    bus-ID: 00:14.3 chip-ID: 8086:51f1 class-ID: 0280
  IF: wlan0 state: up mac: e4:60:17:2f:18:e5
  Device-2: Intel Ethernet I219-V vendor: Lenovo driver: e1000e v: kernel
    port: N/A bus-ID: 00:1f.6 chip-ID: 8086:0dc6 class-ID: 0200
  IF: enp0s31f6 state: down mac: f4:a8:0d:c0:9d:02
  IF-ID-1: virbr0 state: down mac: 52:54:00:1e:3b:26
  Info: services: NetworkManager, systemd-timesyncd, wpa_supplicant
Bluetooth:
  Device-1: Intel AX201 Bluetooth driver: btusb v: 0.8 type: USB rev: 2.0
    speed: 12 Mb/s lanes: 1 mode: 1.1 bus-ID: 3-10:4 chip-ID: 8087:0026
    class-ID: e001
  Report: rfkill ID: hci0 rfk-id: 2 state: down bt-service: enabled,running
    rfk-block: hardware: no software: yes address: see --recommends
Drives:
  Local Storage: total: 476.94 GiB used: 90.34 GiB (18.9%)
  SMART Message: Unable to run smartctl. Root privileges required.
  ID-1: /dev/nvme0n1 maj-min: 259:0 vendor: Western Digital model: WD PC
    SN740 SDDPMQD-512G-1101 size: 476.94 GiB block-size: physical: 512 B
    logical: 512 B speed: 63.2 Gb/s lanes: 4 tech: SSD serial: 23252B807893
    fw-rev: 73110001 temp: 34.9 C scheme: GPT
Partition:
  ID-1: / raw-size: 155.02 GiB size: 151.52 GiB (97.75%)
    used: 89.87 GiB (59.3%) fs: ext4 dev: /dev/nvme0n1p5 maj-min: 259:5
  ID-2: /boot raw-size: 800 MiB size: 798.4 MiB (99.80%)
    used: 485.6 MiB (60.8%) fs: vfat dev: /dev/nvme0n1p1 maj-min: 259:1
Swap:
  Kernel: swappiness: 60 (default) cache-pressure: 100 (default) zswap: no
  ID-1: swap-1 type: zram size: 4 GiB used: 0 KiB (0.0%) priority: 100
    comp: zstd avail: lzo-rle,lzo,lz4,lz4hc,deflate,842 max-streams: 12
    dev: /dev/zram0
Sensors:
  System Temperatures: cpu: 36.2 C mobo: N/A
  Fan Speeds (rpm): N/A
Info:
  Memory: total: 16 GiB note: est. available: 15.15 GiB used: 2.17 GiB (14.3%)
  Processes: 306 Power: uptime: 14m states: freeze,mem,disk suspend: s2idle
    avail: deep wakeups: 0 hibernate: platform avail: shutdown, reboot,
    suspend, test_resume image: 6.04 GiB services: gsd-power,
    power-profiles-daemon, upowerd Init: systemd v: 257 default: graphical
    tool: systemctl
  Packages: pm: pacman pkgs: 1191 libs: 385
    tools: gnome-software,pacseek,yay pm: flatpak pkgs: 0 Compilers: gcc: 15.2.1
    Shell: Bash v: 5.3.3 running-in: kgx inxi: 3.3.38
```
- 