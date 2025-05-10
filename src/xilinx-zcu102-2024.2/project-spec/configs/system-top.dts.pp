# 0 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/system-top.dts"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/system-top.dts"
/dts-v1/;
# 1 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zynqmp.dtsi" 1
# 15 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zynqmp.dtsi"
# 1 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/include/dt-bindings/dma/xlnx-zynqmp-dpdma.h" 1
# 16 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zynqmp.dtsi" 2
# 1 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/include/dt-bindings/gpio/gpio.h" 1
# 17 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zynqmp.dtsi" 2
# 1 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/include/dt-bindings/interrupt-controller/arm-gic.h" 1
# 9 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/include/dt-bindings/interrupt-controller/arm-gic.h"
# 1 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/include/dt-bindings/interrupt-controller/irq.h" 1
# 10 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/include/dt-bindings/interrupt-controller/arm-gic.h" 2
# 18 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zynqmp.dtsi" 2
# 1 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/include/dt-bindings/interrupt-controller/irq.h" 1
# 19 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zynqmp.dtsi" 2
# 1 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/include/dt-bindings/power/xlnx-zynqmp-power.h" 1
# 20 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zynqmp.dtsi" 2
# 1 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/include/dt-bindings/reset/xlnx-zynqmp-resets.h" 1
# 21 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zynqmp.dtsi" 2

/ {
 compatible = "xlnx,zynqmp";
 #address-cells = <2>;
 #size-cells = <2>;
 model = "Xilinx ZynqMP";

 options {
  u-boot {
   compatible = "u-boot,config";
   bootscr-address = /bits/ 64 <0x20000000>;
  };
 };

 cpus_a53: cpus-a53@0 {
  #address-cells = <1>;
  #size-cells = <0>;

  psu_cortexa53_0: cpu@0 {
   compatible = "arm,cortex-a53";
   device_type = "cpu";
   enable-method = "psci";
   operating-points-v2 = <&cpu_opp_table>;
   reg = <0x0>;
   cpu-idle-states = <&CPU_SLEEP_0>;
   next-level-cache = <&L2>;
  };

  psu_cortexa53_1: cpu@1 {
   compatible = "arm,cortex-a53";
   device_type = "cpu";
   enable-method = "psci";
   reg = <0x1>;
   operating-points-v2 = <&cpu_opp_table>;
   cpu-idle-states = <&CPU_SLEEP_0>;
   next-level-cache = <&L2>;
  };

  psu_cortexa53_2: cpu@2 {
   compatible = "arm,cortex-a53";
   device_type = "cpu";
   enable-method = "psci";
   reg = <0x2>;
   operating-points-v2 = <&cpu_opp_table>;
   cpu-idle-states = <&CPU_SLEEP_0>;
   next-level-cache = <&L2>;
  };

  psu_cortexa53_3: cpu@3 {
   compatible = "arm,cortex-a53";
   device_type = "cpu";
   enable-method = "psci";
   reg = <0x3>;
   operating-points-v2 = <&cpu_opp_table>;
   cpu-idle-states = <&CPU_SLEEP_0>;
   next-level-cache = <&L2>;
  };

  L2: l2-cache {
   compatible = "cache";
   cache-level = <2>;
   cache-unified;
  };

  idle-states {
   entry-method = "psci";

   CPU_SLEEP_0: cpu-sleep-0 {
    compatible = "arm,idle-state";
    arm,psci-suspend-param = <0x40000000>;
    local-timer-stop;
    entry-latency-us = <300>;
    exit-latency-us = <600>;
    min-residency-us = <10000>;
   };
  };
 };

 cpus_r5_0: cpus-r5@0 {
  #address-cells = <1>;
  #size-cells = <0>;
  psu_cortexr5_0: cpu@0 {
   compatible = "arm,cortex-r5", "arm,armv8";
   device_type = "cpu";
   reg = <0x0>;
   power-domains = <&zynqmp_firmware 7>;
  };
 };

 cpus_r5_1: cpus-r5@1 {
  #address-cells = <1>;
  #size-cells = <0>;
  psu_cortexr5_1: cpu@1 {
   compatible = "arm,cortex-r5", "arm,armv8";
   device_type = "cpu";
   reg = <0x1>;
   power-domains = <&zynqmp_firmware 8>;
  };
 };

 cpus_microblaze_0: cpus_microblaze@0 {
  #address-cells = <1>;
  #size-cells = <0>;
  psu_pmu_0: cpu@0 {
   compatible = "pmu-microblaze";
   device_type = "cpu";
   reg = <0x0>;
   operating-points-v2 = <&cpu_opp_table>;
  };
 };

 cpu_opp_table: opp-table-cpu {
  compatible = "operating-points-v2";
  opp-shared;
  opp00 {
   opp-hz = /bits/ 64 <1199999988>;
   opp-microvolt = <1000000>;
   clock-latency-ns = <500000>;
  };
  opp01 {
   opp-hz = /bits/ 64 <599999994>;
   opp-microvolt = <1000000>;
   clock-latency-ns = <500000>;
  };
  opp02 {
   opp-hz = /bits/ 64 <399999996>;
   opp-microvolt = <1000000>;
   clock-latency-ns = <500000>;
  };
  opp03 {
   opp-hz = /bits/ 64 <299999997>;
   opp-microvolt = <1000000>;
   clock-latency-ns = <500000>;
  };
 };

 zynqmp_ipi: zynqmp-ipi {
  bootph-all;
  compatible = "xlnx,zynqmp-ipi-mailbox";
  interrupt-parent = <&imux>;
  interrupts = <0 35 4>;
  xlnx,ipi-id = <0>;
  #address-cells = <2>;
  #size-cells = <2>;
  ranges;

  ipi_mailbox_pmu1: mailbox@ff9905c0 {
   bootph-all;
   compatible = "xlnx,zynqmp-ipi-dest-mailbox";
   reg = <0x0 0xff9905c0 0x0 0x20>,
         <0x0 0xff9905e0 0x0 0x20>,
         <0x0 0xff990e80 0x0 0x20>,
         <0x0 0xff990ea0 0x0 0x20>;
   reg-names = "local_request_region",
        "local_response_region",
        "remote_request_region",
        "remote_response_region";
   #mbox-cells = <1>;
   xlnx,ipi-id = <4>;
  };
 };

 dcc: dcc {
  compatible = "arm,dcc";
  status = "disabled";
  bootph-all;
 };

 pmu {
  compatible = "arm,armv8-pmuv3";
  interrupt-parent = <&imux>;
  interrupts = <0 143 4>,
        <0 144 4>,
        <0 145 4>,
        <0 146 4>;
  interrupt-affinity = <&psu_cortexa53_0>,
         <&psu_cortexa53_1>,
         <&psu_cortexa53_2>,
         <&psu_cortexa53_3>;
 };

 psci {
  compatible = "arm,psci-0.2";
  method = "smc";
 };

 firmware {
     optee: optee {
         compatible = "linaro,optee-tz";
         method = "smc";
     };

  zynqmp_firmware: zynqmp-firmware {
   compatible = "xlnx,zynqmp-firmware";
   #power-domain-cells = <1>;
   method = "smc";
   bootph-all;

   zynqmp_power: power-management {
    bootph-all;
    compatible = "xlnx,zynqmp-power";
    interrupt-parent = <&imux>;
    interrupts = <0 35 4>;
    mboxes = <&ipi_mailbox_pmu1 0>, <&ipi_mailbox_pmu1 1>;
    mbox-names = "tx", "rx";
   };

   soc-nvmem {
    compatible = "xlnx,zynqmp-nvmem-fw";
    nvmem-layout {
     compatible = "fixed-layout";
     #address-cells = <1>;
     #size-cells = <1>;

     soc_revision: soc-revision@0 {
      reg = <0x0 0x4>;
     };

     efuse_dna: efuse-dna@c {
      reg = <0xc 0xc>;
     };
     efuse_usr0: efuse-usr0@20 {
      reg = <0x20 0x4>;
     };
     efuse_usr1: efuse-usr1@24 {
      reg = <0x24 0x4>;
     };
     efuse_usr2: efuse-usr2@28 {
      reg = <0x28 0x4>;
     };
     efuse_usr3: efuse-usr3@2c {
      reg = <0x2c 0x4>;
     };
     efuse_usr4: efuse-usr4@30 {
      reg = <0x30 0x4>;
     };
     efuse_usr5: efuse-usr5@34 {
      reg = <0x34 0x4>;
     };
     efuse_usr6: efuse-usr6@38 {
      reg = <0x38 0x4>;
     };
     efuse_usr7: efuse-usr7@3c {
      reg = <0x3c 0x4>;
     };
     efuse_miscusr: efuse-miscusr@40 {
      reg = <0x40 0x4>;
     };
     efuse_chash: efuse-chash@50 {
      reg = <0x50 0x4>;
     };
     efuse_pufmisc: efuse-pufmisc@54 {
      reg = <0x54 0x4>;
     };
     efuse_sec: efuse-sec@58 {
      reg = <0x58 0x4>;
     };
     efuse_spkid: efuse-spkid@5c {
      reg = <0x5c 0x4>;
     };
     efuse_aeskey: efuse-aeskey@60 {
      reg = <0x60 0x20>;
     };
     efuse_ppk0hash: efuse-ppk0hash@a0 {
      reg = <0xa0 0x30>;
     };
     efuse_ppk1hash: efuse-ppk1hash@d0 {
      reg = <0xd0 0x30>;
     };
     efuse_pufuser: efuse-pufuser@100 {
      reg = <0x100 0x7F>;
     };
    };
   };

   zynqmp_pcap: pcap {
    compatible = "xlnx,zynqmp-pcap-fpga";
   };

   zynqmp_reset: reset-controller {
    compatible = "xlnx,zynqmp-reset";
    #reset-cells = <1>;
   };

   pinctrl0: pinctrl {
    compatible = "xlnx,zynqmp-pinctrl";
    status = "disabled";
   };

   modepin_gpio: gpio {
    compatible = "xlnx,zynqmp-gpio-modepin";
    gpio-controller;
    #gpio-cells = <2>;
   };
  };
 };

 timer {
  compatible = "arm,armv8-timer";
  interrupt-parent = <&imux>;
  interrupts = <1 13 ((((1 << (4)) - 1) << 8) | 8)>,
        <1 14 ((((1 << (4)) - 1) << 8) | 8)>,
        <1 11 ((((1 << (4)) - 1) << 8) | 8)>,
        <1 10 ((((1 << (4)) - 1) << 8) | 8)>;
 };

 fpga_full: fpga-region {
  compatible = "fpga-region";
  fpga-mgr = <&zynqmp_pcap>;
  #address-cells = <2>;
  #size-cells = <2>;
  ranges;
 };

 amba_apu: apu-bus {
  compatible = "simple-bus";
  #address-cells = <2>;
  #size-cells = <2>;
  ranges;

  gic_a53: interrupt-controller@f9010000 {
   compatible = "arm,gic-400";
   #interrupt-cells = <3>;
   reg = <0x0 0xf9010000 0x0 0x10000>,
         <0x0 0xf9020000 0x0 0x20000>,
         <0x0 0xf9040000 0x0 0x20000>,
         <0x0 0xf9060000 0x0 0x20000>;
   interrupt-controller;
   interrupt-parent = <&gic_a53>;
   interrupts = <1 9 0xf04>;
   status = "disabled";
  };
 };

 amba_rpu: rpu-bus {
  compatible = "indirect-bus";
  #address-cells = <2>;
  #size-cells = <1>;
  gic_r5: interrupt-controller@f9000000 {
   compatible = "arm,gic-400";
   #interrupt-cells = <3>;
   reg = <0x0 0xf9000000 0x10000>,
         <0x0 0xf9001000 0x10000>;
   interrupt-controller;
   interrupt-parent = <&gic_r5>;
   interrupts = <1 9 0xf04>;
   status = "disabled";
  };
 };

 amba: axi {
  compatible = "simple-bus";
  bootph-all;
  #address-cells = <2>;
  #size-cells = <2>;
  ranges;
  interrupt-parent = <&imux>;


  imux: interrupt-multiplex {
   compatible = "interrupt-multiplex";
   #address-cells = <0x0>;
   #interrupt-cells = <3>;
   interrupt-controller;
   interrupt-parent = <&gic_a53>, <&gic_r5>;

   interrupt-map-mask = <0x0 0xffff 0x0>;


   interrupt-map = <0x0 0x17 0x0 &gic_a53 0x0 0x17 0x1>,
    <0x0 0x18 0x0 &gic_a53 0x0 0x18 0x1>,
    <0x0 0x7b 0x0 &gic_a53 0x0 0x7b 0x4>,
    <0x0 0x56 0x0 &gic_a53 0x0 0x56 0x4>,
    <0x0 0x7c 0x0 &gic_a53 0x0 0x7c 0x4>,
    <0x0 0x7d 0x0 &gic_a53 0x0 0x7d 0x4>,
    <0x0 0x7e 0x0 &gic_a53 0x0 0x8e 0x4>,
    <0x0 0x7f 0x0 &gic_a53 0x0 0x7f 0x4>,
    <0x0 0x80 0x0 &gic_a53 0x0 0x80 0x4>,
    <0x0 0x81 0x0 &gic_a53 0x0 0x81 0x4>,
    <0x0 0x82 0x0 &gic_a53 0x0 0x82 0x4>,
    <0x0 0x83 0x0 &gic_a53 0x0 0x83 0x4>,
    <0x0 0x84 0x0 &gic_a53 0x0 0x84 0x4>,
    <0x0 0x4d 0x0 &gic_a53 0x0 0x4d 0x4>,
    <0x0 0x4e 0x0 &gic_a53 0x0 0x4e 0x4>,
    <0x0 0x4f 0x0 &gic_a53 0x0 0x4f 0x4>,
    <0x0 0x50 0x0 &gic_a53 0x0 0x50 0x4>,
    <0x0 0x51 0x0 &gic_a53 0x0 0x51 0x4>,
    <0x0 0x52 0x0 &gic_a53 0x0 0x52 0x4>,
    <0x0 0x53 0x0 &gic_a53 0x0 0x53 0x4>,
    <0x0 0x54 0x0 &gic_a53 0x0 0x54 0x4>,
    <0x0 0x70 0x0 &gic_a53 0x0 0x70 0x4>,
    <0x0 0xe 0x0 &gic_a53 0x0 0xe 0x4>,
    <0x0 0x39 0x0 &gic_a53 0x0 0x39 0x4>,
    <0x0 0x3b 0x0 &gic_a53 0x0 0x3b 0x4>,
    <0x0 0x3d 0x0 &gic_a53 0x0 0x3d 0x4>,
    <0x0 0x3f 0x0 &gic_a53 0x0 0x3f 0x4>,
    <0x0 0x10 0x0 &gic_a53 0x0 0x10 0x4>,
    <0x0 0x11 0x0 &gic_a53 0x0 0x11 0x4>,
    <0x0 0x12 0x0 &gic_a53 0x0 0x12 0x4>,
    <0x0 0xa 0x0 &gic_a53 0x0 0xa 0x4>,
    <0x0 0x72 0x0 &gic_a53 0x0 0x72 0x4>,
    <0x0 0x73 0x0 &gic_a53 0x0 0x73 0x4>,
    <0x0 0x74 0x0 &gic_a53 0x0 0x74 0x1>,
    <0x0 0x75 0x0 &gic_a53 0x0 0x75 0x1>,
    <0x0 0x76 0x0 &gic_a53 0x0 0x76 0x4>,
    <0x0 0xf 0x0 &gic_a53 0x0 0xf 0x4>,
    <0x0 0x1a 0x0 &gic_a53 0x0 0x1a 0x4>,
    <0x0 0x1b 0x0 &gic_a53 0x0 0x1b 0x4>,
    <0x0 0x85 0x0 &gic_a53 0x0 0x85 0x4>,
    <0x0 0x30 0x0 &gic_a53 0x0 0x30 0x4>,
    <0x0 0x31 0x0 &gic_a53 0x0 0x31 0x4>,
    <0x0 0x13 0x0 &gic_a53 0x0 0x13 0x4>,
    <0x0 0x14 0x0 &gic_a53 0x0 0x14 0x4>,
    <0x0 0x24 0x0 &gic_a53 0x0 0x24 0x4>,
    <0x0 0x25 0x0 &gic_a53 0x0 0x25 0x4>,
    <0x0 0x26 0x0 &gic_a53 0x0 0x26 0x4>,
    <0x0 0x27 0x0 &gic_a53 0x0 0x27 0x4>,
    <0x0 0x28 0x0 &gic_a53 0x0 0x28 0x4>,
    <0x0 0x29 0x0 &gic_a53 0x0 0x29 0x4>,
    <0x0 0x2a 0x0 &gic_a53 0x0 0x2a 0x4>,
    <0x0 0x2b 0x0 &gic_a53 0x0 0x2b 0x4>,
    <0x0 0x2c 0x0 &gic_a53 0x0 0x2c 0x4>,
    <0x0 0x2d 0x0 &gic_a53 0x0 0x2d 0x4>,
    <0x0 0x2e 0x0 &gic_a53 0x0 0x2e 0x4>,
    <0x0 0x2f 0x0 &gic_a53 0x0 0x2f 0x4>,
    <0x0 0x15 0x0 &gic_a53 0x0 0x15 0x4>,
    <0x0 0x16 0x0 &gic_a53 0x0 0x16 0x4>,
    <0x0 0x41 0x0 &gic_a53 0x0 0x41 0x4>,
    <0x0 0x45 0x0 &gic_a53 0x0 0x45 0x4>,
    <0x0 0x4b 0x0 &gic_a53 0x0 0x4b 0x4>,
    <0x0 0x46 0x0 &gic_a53 0x0 0x46 0x4>,
    <0x0 0x4a 0x0 &gic_a53 0x0 0x4a 0x4>,
    <0x0 0x4c 0x0 &gic_a53 0x0 0x4c 0x4>,
    <0x0 0x35 0x0 &gic_a53 0x0 0x35 0x4>,
    <0x0 0x71 0x0 &gic_a53 0x0 0x71 0x4>,
    <0x0 0x77 0x0 &gic_a53 0x0 0x77 0x4>,
    <0x0 0x1d 0x0 &gic_a53 0x0 0x1d 0x4>,
    <0x0 0x1e 0x0 &gic_a53 0x0 0x1e 0x4>,
    <0x0 0x1f 0x0 &gic_a53 0x0 0x1f 0x4>,
    <0x0 0x20 0x0 &gic_a53 0x0 0x20 0x4>,
    <0x0 0x21 0x0 &gic_a53 0x0 0x21 0x4>,
    <0x0 0x22 0x0 &gic_a53 0x0 0x22 0x4>,
    <0x0 0x23 0x0 &gic_a53 0x0 0x23 0x4>,
    <0x0 0x7a 0x0 &gic_a53 0x0 0x7a 0x4>,
    <0x0 0x17 0x0 &gic_r5 0x0 0x17 0x1>,
    <0x0 0x18 0x0 &gic_r5 0x0 0x18 0x1>,
    <0x0 0x7b 0x0 &gic_r5 0x0 0x7b 0x4>,
    <0x0 0x56 0x0 &gic_r5 0x0 0x56 0x4>,
    <0x0 0x7c 0x0 &gic_r5 0x0 0x7c 0x4>,
    <0x0 0x7d 0x0 &gic_r5 0x0 0x7d 0x4>,
    <0x0 0x7e 0x0 &gic_r5 0x0 0x8e 0x4>,
    <0x0 0x7f 0x0 &gic_r5 0x0 0x7f 0x4>,
    <0x0 0x80 0x0 &gic_r5 0x0 0x80 0x4>,
    <0x0 0x81 0x0 &gic_r5 0x0 0x81 0x4>,
    <0x0 0x82 0x0 &gic_r5 0x0 0x82 0x4>,
    <0x0 0x83 0x0 &gic_r5 0x0 0x83 0x4>,
    <0x0 0x84 0x0 &gic_r5 0x0 0x84 0x4>,
    <0x0 0x4d 0x0 &gic_r5 0x0 0x4d 0x4>,
    <0x0 0x4e 0x0 &gic_r5 0x0 0x4e 0x4>,
    <0x0 0x4f 0x0 &gic_r5 0x0 0x4f 0x4>,
    <0x0 0x50 0x0 &gic_r5 0x0 0x50 0x4>,
    <0x0 0x51 0x0 &gic_r5 0x0 0x51 0x4>,
    <0x0 0x52 0x0 &gic_r5 0x0 0x52 0x4>,
    <0x0 0x53 0x0 &gic_r5 0x0 0x53 0x4>,
    <0x0 0x54 0x0 &gic_r5 0x0 0x54 0x4>,
    <0x0 0x70 0x0 &gic_r5 0x0 0x70 0x4>,
    <0x0 0xe 0x0 &gic_r5 0x0 0xe 0x4>,
    <0x0 0x39 0x0 &gic_r5 0x0 0x39 0x4>,
    <0x0 0x3b 0x0 &gic_r5 0x0 0x3b 0x4>,
    <0x0 0x3d 0x0 &gic_r5 0x0 0x3d 0x4>,
    <0x0 0x3f 0x0 &gic_r5 0x0 0x3f 0x4>,
    <0x0 0x10 0x0 &gic_r5 0x0 0x10 0x4>,
    <0x0 0x11 0x0 &gic_r5 0x0 0x11 0x4>,
    <0x0 0x12 0x0 &gic_r5 0x0 0x12 0x4>,
    <0x0 0xa 0x0 &gic_r5 0x0 0xa 0x4>,
    <0x0 0x72 0x0 &gic_r5 0x0 0x72 0x4>,
    <0x0 0x73 0x0 &gic_r5 0x0 0x73 0x4>,
    <0x0 0x74 0x0 &gic_r5 0x0 0x74 0x1>,
    <0x0 0x75 0x0 &gic_r5 0x0 0x75 0x1>,
    <0x0 0x76 0x0 &gic_r5 0x0 0x76 0x4>,
    <0x0 0xf 0x0 &gic_r5 0x0 0xf 0x4>,
    <0x0 0x1a 0x0 &gic_r5 0x0 0x1a 0x4>,
    <0x0 0x1b 0x0 &gic_r5 0x0 0x1b 0x4>,
    <0x0 0x85 0x0 &gic_r5 0x0 0x85 0x4>,
    <0x0 0x30 0x0 &gic_r5 0x0 0x30 0x4>,
    <0x0 0x31 0x0 &gic_r5 0x0 0x31 0x4>,
    <0x0 0x13 0x0 &gic_r5 0x0 0x13 0x4>,
    <0x0 0x14 0x0 &gic_r5 0x0 0x14 0x4>,
    <0x0 0x24 0x0 &gic_r5 0x0 0x24 0x4>,
    <0x0 0x25 0x0 &gic_r5 0x0 0x25 0x4>,
    <0x0 0x26 0x0 &gic_r5 0x0 0x26 0x4>,
    <0x0 0x27 0x0 &gic_r5 0x0 0x27 0x4>,
    <0x0 0x28 0x0 &gic_r5 0x0 0x28 0x4>,
    <0x0 0x29 0x0 &gic_r5 0x0 0x29 0x4>,
    <0x0 0x2a 0x0 &gic_r5 0x0 0x2a 0x4>,
    <0x0 0x2b 0x0 &gic_r5 0x0 0x2b 0x4>,
    <0x0 0x2c 0x0 &gic_r5 0x0 0x2c 0x4>,
    <0x0 0x2d 0x0 &gic_r5 0x0 0x2d 0x4>,
    <0x0 0x2e 0x0 &gic_r5 0x0 0x2e 0x4>,
    <0x0 0x2f 0x0 &gic_r5 0x0 0x2f 0x4>,
    <0x0 0x15 0x0 &gic_r5 0x0 0x15 0x4>,
    <0x0 0x16 0x0 &gic_r5 0x0 0x16 0x4>,
    <0x0 0x41 0x0 &gic_r5 0x0 0x41 0x4>,
    <0x0 0x45 0x0 &gic_r5 0x0 0x45 0x4>,
    <0x0 0x4b 0x0 &gic_r5 0x0 0x4b 0x4>,
    <0x0 0x46 0x0 &gic_r5 0x0 0x46 0x4>,
    <0x0 0x4a 0x0 &gic_r5 0x0 0x4a 0x4>,
    <0x0 0x4c 0x0 &gic_r5 0x0 0x4c 0x4>,
    <0x0 0x35 0x0 &gic_r5 0x0 0x35 0x4>,
    <0x0 0x71 0x0 &gic_r5 0x0 0x71 0x4>,
    <0x0 0x77 0x0 &gic_r5 0x0 0x77 0x4>,
    <0x0 0x1d 0x0 &gic_r5 0x0 0x1d 0x4>,
    <0x0 0x1e 0x0 &gic_r5 0x0 0x1e 0x4>,
    <0x0 0x1f 0x0 &gic_r5 0x0 0x1f 0x4>,
    <0x0 0x20 0x0 &gic_r5 0x0 0x20 0x4>,
    <0x0 0x21 0x0 &gic_r5 0x0 0x21 0x4>,
    <0x0 0x22 0x0 &gic_r5 0x0 0x22 0x4>,
    <0x0 0x23 0x0 &gic_r5 0x0 0x23 0x4>,
    <0x0 0x7a 0x0 &gic_r5 0x0 0x7a 0x4>;
  };

  can0: can@ff060000 {
   compatible = "xlnx,zynq-can-1.0";
   status = "disabled";
   clock-names = "can_clk", "pclk";
   reg = <0x0 0xff060000 0x0 0x1000>;
   interrupts = <0 23 4>;
   interrupt-parent = <&imux>;
   tx-fifo-depth = <0x40>;
   rx-fifo-depth = <0x40>;
   resets = <&zynqmp_reset 40>;
   power-domains = <&zynqmp_firmware 47>;
  };

  can1: can@ff070000 {
   compatible = "xlnx,zynq-can-1.0";
   status = "disabled";
   clock-names = "can_clk", "pclk";
   reg = <0x0 0xff070000 0x0 0x1000>;
   interrupts = <0 24 4>;
   interrupt-parent = <&imux>;
   tx-fifo-depth = <0x40>;
   rx-fifo-depth = <0x40>;
   resets = <&zynqmp_reset 41>;
   power-domains = <&zynqmp_firmware 48>;
  };

  cci: cci@fd6e0000 {
   compatible = "arm,cci-400";
   status = "disabled";
   reg = <0x0 0xfd6e0000 0x0 0x9000>;
   ranges = <0x0 0x0 0xfd6e0000 0x10000>;
   #address-cells = <1>;
   #size-cells = <1>;

   pmu@9000 {
    compatible = "arm,cci-400-pmu,r1";
    reg = <0x9000 0x5000>;
    interrupt-parent = <&imux>;
    interrupts = <0 123 4>,
          <0 123 4>,
          <0 123 4>,
          <0 123 4>,
          <0 123 4>;
   };
  };


  fpd_dma_chan1: dma-controller@fd500000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xfd500000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 124 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <128>;

   power-domains = <&zynqmp_firmware 42>;
  };

  fpd_dma_chan2: dma-controller@fd510000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xfd510000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 125 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <128>;

   power-domains = <&zynqmp_firmware 42>;
  };

  fpd_dma_chan3: dma-controller@fd520000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xfd520000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 126 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <128>;

   power-domains = <&zynqmp_firmware 42>;
  };

  fpd_dma_chan4: dma-controller@fd530000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xfd530000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 127 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <128>;

   power-domains = <&zynqmp_firmware 42>;
  };

  fpd_dma_chan5: dma-controller@fd540000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xfd540000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 128 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <128>;

   power-domains = <&zynqmp_firmware 42>;
  };

  fpd_dma_chan6: dma-controller@fd550000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xfd550000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 129 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <128>;

   power-domains = <&zynqmp_firmware 42>;
  };

  fpd_dma_chan7: dma-controller@fd560000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xfd560000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 130 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <128>;

   power-domains = <&zynqmp_firmware 42>;
  };

  fpd_dma_chan8: dma-controller@fd570000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xfd570000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 131 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <128>;

   power-domains = <&zynqmp_firmware 42>;
  };

  gpu: gpu@fd4b0000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-mali", "arm,mali-400";
   reg = <0x0 0xfd4b0000 0x0 0x10000>;
   interrupt-parent = <&imux>;
   interrupts = <0 132 4>,
      <0 132 4>,
      <0 132 4>,
      <0 132 4>,
      <0 132 4>,
      <0 132 4>;
   interrupt-names = "gp", "gpmmu", "pp0", "ppmmu0", "pp1", "ppmmu1";
   clock-names = "bus", "core";
   power-domains = <&zynqmp_firmware 58>;
  };





  lpd_dma_chan1: dma-controller@ffa80000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xffa80000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 77 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <64>;

   power-domains = <&zynqmp_firmware 43>;
  };

  lpd_dma_chan2: dma-controller@ffa90000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xffa90000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 78 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <64>;

   power-domains = <&zynqmp_firmware 43>;
  };

  lpd_dma_chan3: dma-controller@ffaa0000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xffaa0000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 79 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <64>;

   power-domains = <&zynqmp_firmware 43>;
  };

  lpd_dma_chan4: dma-controller@ffab0000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xffab0000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 80 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <64>;

   power-domains = <&zynqmp_firmware 43>;
  };

  lpd_dma_chan5: dma-controller@ffac0000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xffac0000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 81 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <64>;

   power-domains = <&zynqmp_firmware 43>;
  };

  lpd_dma_chan6: dma-controller@ffad0000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xffad0000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 82 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <64>;

   power-domains = <&zynqmp_firmware 43>;
  };

  lpd_dma_chan7: dma-controller@ffae0000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xffae0000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 83 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <64>;

   power-domains = <&zynqmp_firmware 43>;
  };

  lpd_dma_chan8: dma-controller@ffaf0000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xffaf0000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 84 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <64>;

   power-domains = <&zynqmp_firmware 43>;
  };

  mc: memory-controller@fd070000 {
   compatible = "xlnx,zynqmp-ddrc-2.40a";
   reg = <0x0 0xfd070000 0x0 0x30000>;
   interrupt-parent = <&imux>;
   interrupts = <0 112 4>;
  };

  nand0: nand-controller@ff100000 {
   compatible = "xlnx,zynqmp-nand-controller", "arasan,nfc-v3p10";
   status = "disabled";
   reg = <0x0 0xff100000 0x0 0x1000>;
   clock-names = "controller", "bus";
   interrupt-parent = <&imux>;
   interrupts = <0 14 4>;
   #address-cells = <1>;
   #size-cells = <0>;

   power-domains = <&zynqmp_firmware 44>;
  };

  gem0: ethernet@ff0b0000 {
   compatible = "xlnx,zynqmp-gem", "cdns,gem";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 57 4>,
      <0 57 4>;
   reg = <0x0 0xff0b0000 0x0 0x1000>;
   clock-names = "pclk", "hclk", "tx_clk", "rx_clk", "tsu_clk";

   power-domains = <&zynqmp_firmware 29>;
   resets = <&zynqmp_reset 29>;
   reset-names = "gem0_rst";
  };

  gem1: ethernet@ff0c0000 {
   compatible = "xlnx,zynqmp-gem", "cdns,gem";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 59 4>,
      <0 59 4>;
   reg = <0x0 0xff0c0000 0x0 0x1000>;
   clock-names = "pclk", "hclk", "tx_clk", "rx_clk", "tsu_clk";

   power-domains = <&zynqmp_firmware 30>;
   resets = <&zynqmp_reset 30>;
   reset-names = "gem1_rst";
  };

  gem2: ethernet@ff0d0000 {
   compatible = "xlnx,zynqmp-gem", "cdns,gem";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 61 4>,
      <0 61 4>;
   reg = <0x0 0xff0d0000 0x0 0x1000>;
   clock-names = "pclk", "hclk", "tx_clk", "rx_clk", "tsu_clk";

   power-domains = <&zynqmp_firmware 31>;
   resets = <&zynqmp_reset 31>;
   reset-names = "gem2_rst";
  };

  gem3: ethernet@ff0e0000 {
   compatible = "xlnx,zynqmp-gem", "cdns,gem";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 63 4>,
      <0 63 4>;
   reg = <0x0 0xff0e0000 0x0 0x1000>;
   clock-names = "pclk", "hclk", "tx_clk", "rx_clk", "tsu_clk";

   power-domains = <&zynqmp_firmware 32>;
   resets = <&zynqmp_reset 32>;
   reset-names = "gem3_rst";
  };

  gpio: gpio@ff0a0000 {
   compatible = "xlnx,zynqmp-gpio-1.0";
   status = "disabled";
   #gpio-cells = <0x2>;
   gpio-controller;
   interrupt-parent = <&imux>;
   interrupts = <0 16 4>;
   interrupt-controller;
   #interrupt-cells = <2>;
   reg = <0x0 0xff0a0000 0x0 0x1000>;
   power-domains = <&zynqmp_firmware 46>;
  };

  i2c0: i2c@ff020000 {
   compatible = "cdns,i2c-r1p14";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 17 4>;
   clock-frequency = <400000>;
   reg = <0x0 0xff020000 0x0 0x1000>;
   #address-cells = <1>;
   #size-cells = <0>;
   power-domains = <&zynqmp_firmware 37>;
  };

  i2c1: i2c@ff030000 {
   compatible = "cdns,i2c-r1p14";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 18 4>;
   clock-frequency = <400000>;
   reg = <0x0 0xff030000 0x0 0x1000>;
   #address-cells = <1>;
   #size-cells = <0>;
   power-domains = <&zynqmp_firmware 38>;
  };

  ocm: memory-controller@ff960000 {
   compatible = "xlnx,zynqmp-ocmc-1.0";
   reg = <0x0 0xff960000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 10 4>;
  };

  perf_monitor_ocm: perf-monitor@ffa00000 {
   compatible = "xlnx,axi-perf-monitor";
   reg = <0x0 0xffa00000 0x0 0x10000>;
   interrupts = <0 25 4>;
   interrupt-parent = <&imux>;
   xlnx,enable-profile = <0>;
   xlnx,enable-trace = <0>;
   xlnx,num-monitor-slots = <1>;
   xlnx,enable-event-count = <1>;
   xlnx,enable-event-log = <1>;
   xlnx,have-sampled-metric-cnt = <1>;
   xlnx,num-of-counters = <8>;
   xlnx,metric-count-width = <32>;
   xlnx,metrics-sample-count-width = <32>;
   xlnx,global-count-width = <32>;
   xlnx,metric-count-scale = <1>;
  };

  perf_monitor_ddr: perf-monitor@fd0b0000 {
   compatible = "xlnx,axi-perf-monitor";
   reg = <0x0 0xfd0b0000 0x0 0x10000>;
   interrupts = <0 123 4>;
   interrupt-parent = <&imux>;
   xlnx,enable-profile = <0>;
   xlnx,enable-trace = <0>;
   xlnx,num-monitor-slots = <6>;
   xlnx,enable-event-count = <1>;
   xlnx,enable-event-log = <0>;
   xlnx,have-sampled-metric-cnt = <1>;
   xlnx,num-of-counters = <10>;
   xlnx,metric-count-width = <32>;
   xlnx,metrics-sample-count-width = <32>;
   xlnx,global-count-width = <32>;
   xlnx,metric-count-scale = <1>;
  };

  perf_monitor_cci: perf-monitor@fd490000 {
   compatible = "xlnx,axi-perf-monitor";
   reg = <0x0 0xfd490000 0x0 0x10000>;
   interrupts = <0 123 4>;
   interrupt-parent = <&imux>;
   xlnx,enable-profile = <0>;
   xlnx,enable-trace = <0>;
   xlnx,num-monitor-slots = <1>;
   xlnx,enable-event-count = <1>;
   xlnx,enable-event-log = <0>;
   xlnx,have-sampled-metric-cnt = <1>;
   xlnx,num-of-counters = <8>;
   xlnx,metric-count-width = <32>;
   xlnx,metrics-sample-count-width = <32>;
   xlnx,global-count-width = <32>;
   xlnx,metric-count-scale = <1>;
  };

  perf_monitor_lpd: perf-monitor@ffa10000 {
   compatible = "xlnx,axi-perf-monitor";
   reg = <0x0 0xffa10000 0x0 0x10000>;
   interrupts = <0 25 4>;
   interrupt-parent = <&imux>;
   xlnx,enable-profile = <0>;
   xlnx,enable-trace = <0>;
   xlnx,num-monitor-slots = <1>;
   xlnx,enable-event-count = <1>;
   xlnx,enable-event-log = <1>;
   xlnx,have-sampled-metric-cnt = <1>;
   xlnx,num-of-counters = <8>;
   xlnx,metric-count-width = <32>;
   xlnx,metrics-sample-count-width = <32>;
   xlnx,global-count-width = <32>;
   xlnx,metric-count-scale = <1>;
  };

  pcie: pcie@fd0e0000 {
   compatible = "xlnx,nwl-pcie-2.11";
   status = "disabled";
   #address-cells = <3>;
   #size-cells = <2>;
   #interrupt-cells = <1>;
   msi-controller;
   device_type = "pci";
   interrupt-parent = <&imux>;
   interrupts = <0 118 4>,
         <0 117 4>,
         <0 116 4>,
         <0 115 4>,
         <0 114 4>;
   interrupt-names = "misc", "dummy", "intx",
       "msi1", "msi0";
   msi-parent = <&pcie>;
   reg = <0x0 0xfd0e0000 0x0 0x1000>,
         <0x0 0xfd480000 0x0 0x1000>,
         <0x80 0x00000000 0x0 0x10000000>;
   reg-names = "breg", "pcireg", "cfg";
   ranges = <0x02000000 0x00000000 0xe0000000 0x00000000 0xe0000000 0x00000000 0x10000000>,
      <0x43000000 0x00000006 0x00000000 0x00000006 0x00000000 0x00000002 0x00000000>;
   bus-range = <0x00 0xff>;
   interrupt-map-mask = <0x0 0x0 0x0 0x7>;
   interrupt-map = <0x0 0x0 0x0 0x1 &pcie_intc 0x1>,
     <0x0 0x0 0x0 0x2 &pcie_intc 0x2>,
     <0x0 0x0 0x0 0x3 &pcie_intc 0x3>,
     <0x0 0x0 0x0 0x4 &pcie_intc 0x4>;

   power-domains = <&zynqmp_firmware 59>;
   pcie_intc: legacy-interrupt-controller {
    interrupt-controller;
    #address-cells = <0>;
    #interrupt-cells = <1>;
   };
  };

  qspi: spi@ff0f0000 {
   bootph-all;
   compatible = "xlnx,zynqmp-qspi-1.0";
   status = "disabled";
   clock-names = "ref_clk", "pclk";
   interrupts = <0 15 4>;
   interrupt-parent = <&imux>;
   num-cs = <1>;
   reg = <0x0 0xff0f0000 0x0 0x1000>,
         <0x0 0xc0000000 0x0 0x8000000>;
   #address-cells = <1>;
   #size-cells = <0>;

   power-domains = <&zynqmp_firmware 45>;
  };

  psgtr: phy@fd400000 {
   compatible = "xlnx,zynqmp-psgtr-v1.1";
   status = "disabled";
   reg = <0x0 0xfd400000 0x0 0x40000>,
         <0x0 0xfd3d0000 0x0 0x1000>;
   reg-names = "serdes", "siou";
   #phy-cells = <4>;
  };

  rtc: rtc@ffa60000 {
   compatible = "xlnx,zynqmp-rtc";
   status = "disabled";
   reg = <0x0 0xffa60000 0x0 0x100>;
   interrupt-parent = <&imux>;
   interrupts = <0 26 4>,
       <0 27 4>;
   interrupt-names = "alarm", "sec";
   calibration = <0x7FFF>;
  };

  sata: ahci@fd0c0000 {
   compatible = "ceva,ahci-1v84";
   status = "disabled";
   reg = <0x0 0xfd0c0000 0x0 0x2000>;
   interrupt-parent = <&imux>;
   interrupts = <0 133 4>;
   power-domains = <&zynqmp_firmware 28>;
   resets = <&zynqmp_reset 16>;


  };

  sdhci0: mmc@ff160000 {
   bootph-all;
   compatible = "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 48 4>;
   reg = <0x0 0xff160000 0x0 0x1000>;
   clock-names = "clk_xin", "clk_ahb";

   #clock-cells = <1>;
   clock-output-names = "clk_out_sd0", "clk_in_sd0";
   power-domains = <&zynqmp_firmware 39>;
   resets = <&zynqmp_reset 38>;
  };

  sdhci1: mmc@ff170000 {
   bootph-all;
   compatible = "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 49 4>;
   reg = <0x0 0xff170000 0x0 0x1000>;
   clock-names = "clk_xin", "clk_ahb";

   #clock-cells = <1>;
   clock-output-names = "clk_out_sd1", "clk_in_sd1";
   power-domains = <&zynqmp_firmware 40>;
   resets = <&zynqmp_reset 39>;
  };

  smmu: iommu@fd800000 {
   compatible = "arm,mmu-500";
   reg = <0x0 0xfd800000 0x0 0x20000>;
   #iommu-cells = <1>;
   status = "disabled";
   #global-interrupts = <1>;
   interrupt-parent = <&imux>;
   interrupts = <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>;
  };

  spi0: spi@ff040000 {
   compatible = "cdns,spi-r1p6";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 19 4>;
   reg = <0x0 0xff040000 0x0 0x1000>;
   clock-names = "ref_clk", "pclk";
   #address-cells = <1>;
   #size-cells = <0>;
   power-domains = <&zynqmp_firmware 35>;
  };

  spi1: spi@ff050000 {
   compatible = "cdns,spi-r1p6";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 20 4>;
   reg = <0x0 0xff050000 0x0 0x1000>;
   clock-names = "ref_clk", "pclk";
   #address-cells = <1>;
   #size-cells = <0>;
   power-domains = <&zynqmp_firmware 36>;
  };

  ttc0: timer@ff110000 {
   compatible = "cdns,ttc";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 36 4>,
       <0 37 4>,
       <0 38 4>;
   reg = <0x0 0xff110000 0x0 0x1000>;
   timer-width = <32>;
   power-domains = <&zynqmp_firmware 24>;
  };

  ttc1: timer@ff120000 {
   compatible = "cdns,ttc";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 39 4>,
         <0 40 4>,
         <0 41 4>;
   reg = <0x0 0xff120000 0x0 0x1000>;
   timer-width = <32>;
   power-domains = <&zynqmp_firmware 25>;
  };

  ttc2: timer@ff130000 {
   compatible = "cdns,ttc";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 42 4>,
         <0 43 4>,
         <0 44 4>;
   reg = <0x0 0xff130000 0x0 0x1000>;
   timer-width = <32>;
   power-domains = <&zynqmp_firmware 26>;
  };

  ttc3: timer@ff140000 {
   compatible = "cdns,ttc";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 45 4>,
         <0 46 4>,
         <0 47 4>;
   reg = <0x0 0xff140000 0x0 0x1000>;
   timer-width = <32>;
   power-domains = <&zynqmp_firmware 27>;
  };

  uart0: serial@ff000000 {
   bootph-all;
   compatible = "xlnx,zynqmp-uart", "cdns,uart-r1p12";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 21 4>;
   reg = <0x0 0xff000000 0x0 0x1000>;
   clock-names = "uart_clk", "pclk";
   power-domains = <&zynqmp_firmware 33>;
   resets = <&zynqmp_reset 34>;
  };

  uart1: serial@ff010000 {
   bootph-all;
   compatible = "xlnx,zynqmp-uart", "cdns,uart-r1p12";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 22 4>;
   reg = <0x0 0xff010000 0x0 0x1000>;
   clock-names = "uart_clk", "pclk";
   power-domains = <&zynqmp_firmware 34>;
   resets = <&zynqmp_reset 35>;
  };

  usb0: usb@ff9d0000 {
   #address-cells = <2>;
   #size-cells = <2>;
   status = "disabled";
   compatible = "xlnx,zynqmp-dwc3";
   reg = <0x0 0xff9d0000 0x0 0x100>;
   clock-names = "bus_clk", "ref_clk";
   power-domains = <&zynqmp_firmware 22>;
   resets = <&zynqmp_reset 59>,
     <&zynqmp_reset 61>,
     <&zynqmp_reset 63>;
   reset-names = "usb_crst", "usb_hibrst", "usb_apbrst";
   reset-gpios = <&modepin_gpio 1 1>;
   ranges;

   dwc3_0: usb@fe200000 {
    compatible = "snps,dwc3";
    status = "disabled";
    reg = <0x0 0xfe200000 0x0 0x40000>;
    interrupt-parent = <&imux>;
    interrupt-names = "host", "peripheral", "otg", "wakeup";
    interrupts = <0 65 4>,
          <0 65 4>,
          <0 69 4>,
          <0 75 4>;

    snps,quirk-frame-length-adjustment = <0x20>;
    clock-names = "ref";
                snps,resume-hs-terminations;

   };
  };

  usb1: usb@ff9e0000 {
   #address-cells = <2>;
   #size-cells = <2>;
   status = "disabled";
   compatible = "xlnx,zynqmp-dwc3";
   reg = <0x0 0xff9e0000 0x0 0x100>;
   clock-names = "bus_clk", "ref_clk";
   power-domains = <&zynqmp_firmware 23>;
   resets = <&zynqmp_reset 60>,
     <&zynqmp_reset 62>,
     <&zynqmp_reset 64>;
   reset-names = "usb_crst", "usb_hibrst", "usb_apbrst";

   ranges;

   dwc3_1: usb@fe300000 {
    compatible = "snps,dwc3";
    status = "disabled";
    reg = <0x0 0xfe300000 0x0 0x40000>;
    interrupt-parent = <&imux>;
    interrupt-names = "host", "peripheral", "otg", "wakeup";
    interrupts = <0 70 4>,
          <0 70 4>,
          <0 74 4>,
          <0 76 4>;

    snps,quirk-frame-length-adjustment = <0x20>;
    clock-names = "ref";
                snps,resume-hs-terminations;

   };
  };

  watchdog0: watchdog@fd4d0000 {
   compatible = "cdns,wdt-r1p2";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 113 1>;
   reg = <0x0 0xfd4d0000 0x0 0x1000>;
   timeout-sec = <60>;
   reset-on-timeout;
  };

  lpd_watchdog: watchdog@ff150000 {
   compatible = "cdns,wdt-r1p2";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 52 1>;
   reg = <0x0 0xff150000 0x0 0x1000>;
   timeout-sec = <10>;
  };

  xilinx_ams: ams@ffa50000 {
   compatible = "xlnx,zynqmp-ams";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 56 4>;
   reg = <0x0 0xffa50000 0x0 0x800>;
   #address-cells = <1>;
   #size-cells = <1>;
   #io-channel-cells = <1>;
   ranges = <0 0 0xffa50800 0x800>;

   ams_ps: ams-ps@0 {
    compatible = "xlnx,zynqmp-ams-ps";
    status = "disabled";
    reg = <0x0 0x400>;
   };

   ams_pl: ams-pl@400 {
    compatible = "xlnx,zynqmp-ams-pl";
    status = "disabled";
    reg = <0x400 0x400>;
   };
  };

  zynqmp_dpdma: dma-controller@fd4c0000 {
   compatible = "xlnx,zynqmp-dpdma";
   status = "disabled";
   reg = <0x0 0xfd4c0000 0x0 0x1000>;
   interrupts = <0 122 4>;
   interrupt-parent = <&imux>;
   clock-names = "axi_clk";
   power-domains = <&zynqmp_firmware 41>;
   dma-channels = <6>;

   #dma-cells = <1>;
  };

  zynqmp_dpaud_setting: dp-aud@fd4ac000 {
   compatible = "xlnx,zynqmp-dpaud-setting", "syscon";
   reg = <0x0 0xfd4ac000 0x0 0x1000>;
  };

  zynqmp_dpsub: display@fd4a0000 {
   bootph-all;
   compatible = "xlnx,zynqmp-dpsub-1.7";
   status = "disabled";
   reg = <0x0 0xfd4a0000 0x0 0x1000>,
         <0x0 0xfd4aa000 0x0 0x1000>,
         <0x0 0xfd4ab000 0x0 0x1000>;
   reg-names = "dp", "blend", "av_buf";
   xlnx,dpaud-reg = <&zynqmp_dpaud_setting>;
   interrupts = <0 119 4>;
   interrupt-parent = <&imux>;

   clock-names = "dp_apb_clk", "dp_aud_clk",
          "dp_vtc_pixel_clk_in";
   power-domains = <&zynqmp_firmware 41>;
   resets = <&zynqmp_reset 3>;
   dma-names = "vid0", "vid1", "vid2", "gfx0";
   dmas = <&zynqmp_dpdma 0>,
    <&zynqmp_dpdma 1>,
    <&zynqmp_dpdma 2>,
    <&zynqmp_dpdma 3>;



   zynqmp_dp_snd_codec0: zynqmp-dp-snd-codec0 {
    compatible = "xlnx,dp-snd-codec";
    clock-names = "aud_clk";
   };

   zynqmp_dp_snd_pcm0: zynqmp-dp-snd-pcm0 {
    compatible = "xlnx,dp-snd-pcm0";
    dmas = <&zynqmp_dpdma 4>;
    dma-names = "tx";
   };

   zynqmp_dp_snd_pcm1: zynqmp-dp-snd-pcm1 {
    compatible = "xlnx,dp-snd-pcm1";
    dmas = <&zynqmp_dpdma 5>;
    dma-names = "tx";
   };

   zynqmp_dp_snd_card0: zynqmp-dp-snd-card {
    compatible = "xlnx,dp-snd-card";
    xlnx,dp-snd-pcm = <&zynqmp_dp_snd_pcm0>,
        <&zynqmp_dp_snd_pcm1>;
    xlnx,dp-snd-codec = <&zynqmp_dp_snd_codec0>;
   };
  };

  csuwdt_0: watchdog@ffcb0000 {
   compatible = "cdns,wdt-r1p2";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 53 1>;
   reg = <0x0 0xffcb0000 0x0 0x1000>;
   timeout-sec = <60>;
   reset-on-timeout;
   xlnx,clock-freq = <99990005>;
  };

  coresight_0: coresight@fe800000 {
   compatible = "xlnx,coresight-1.0";
   status = "disabled";
   reg = <0x0 0xfe800000 0x0 0x10000>;
  };


  csudma_0: dma@ffc80000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-csudma-1.0";
   interrupt-parent = <&imux>;
   interrupts = <0 86 4>;
   reg = <0x0 0xffc80000 0x0 0x40000>;
  };

  ipi0: ipi@ff300000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-ipi-mailbox";
   interrupt-parent = <&imux>;
   interrupts = <0 35 4>;
   reg = <0x0 0xff300000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x1>;
   xlnx,ipi-id = <0>;
   xlnx,ipi-buf-index = <2>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;
  };

  ipi1: ipi@ff310000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-ipi-mailbox";
   interrupt-parent = <&imux>;
   interrupts = <0 33 4>;
   reg = <0x0 0xff310000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x100>;
   xlnx,ipi-id = <1>;
   xlnx,ipi-buf-index = <0>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;
  };

  ipi2: ipi@ff320000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-ipi-mailbox";
   interrupt-parent = <&imux>;
   interrupts = <0 34 4>;
   reg = <0x0 0xff320000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x200>;
   xlnx,ipi-id = <2>;
   xlnx,ipi-buf-index = <1>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;
  };

  ipi3: ipi@ff330000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-ipi-mailbox";
   reg = <0x0 0xff330000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x10000>;
   xlnx,ipi-id = <3>;
   xlnx,ipi-buf-index = <7>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;
  };

  ipi4: ipi@ff331000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-ipi-mailbox";
   reg = <0x0 0xff331000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x20000U>;
   xlnx,ipi-id = <4>;
   xlnx,ipi-buf-index = <7>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;
  };

  ipi5: ipi@ff332000 {
   compatible = "xlnx,zynqmp-ipi-mailbox";
   status = "disabled";
   reg = <0x0 0xff332000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x40000>;
   xlnx,ipi-id = <5>;
   xlnx,ipi-buf-index = <7>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;
  };

  ipi6: ipi@ff333000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-ipi-mailbox";
   reg = <0x0 0xff333000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x80000>;
   xlnx,ipi-id = <6>;
   xlnx,ipi-buf-index = <7>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;
  };

  ipi7: ipi@ff340000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-ipi-mailbox";
   interrupt-parent = <&imux>;
   interrupts = <0 29 4>;
   reg = <0x0 0xff340000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x1000000>;
   xlnx,ipi-id = <7>;
   xlnx,ipi-buf-index = <3>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;
  };

  ipi8: ipi@ff350000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-ipi-mailbox";
   interrupt-parent = <&imux>;
   interrupts = <0 30 4>;
   reg = <0x0 0xff350000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x2000000>;
   xlnx,ipi-id = <8>;
   xlnx,ipi-buf-index = <4>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;

  };

  ipi9: ipi@ff360000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-ipi-mailbox";
   interrupt-parent = <&imux>;
   interrupts = <0 31 4>;
   reg = <0x0 0xff360000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x4000000>;
   xlnx,ipi-id = <9>;
   xlnx,ipi-buf-index = <5>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;

  };

  ipi10: ipi@ff370000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-ipi-mailbox";
   interrupt-parent = <&imux>;
   interrupts = <0 32 4>;
   reg = <0x0 0xff370000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x8000000>;
   xlnx,ipi-id = <10>;
   xlnx,ipi-buf-index = <5>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;

  };
 };

 amba_xppu: indirect-bus@1 {
                compatible = "indirect-bus";
                #address-cells = <0x2>;
                #size-cells = <0x2>;
                lpd_xppu: xppu@ff980000 {
                        compatible = "xlnx,xppu";
                        #firewall-cells = <0x0>;
                        reg = <0x0 0xff980000 0x0 0x1000>;
                        status = "disabled";
                };
 };
};
# 3 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/system-top.dts" 2
# 1 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zynqmp-clk-ccf.dtsi" 1
# 11 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zynqmp-clk-ccf.dtsi"
# 1 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/include/dt-bindings/clock/xlnx-zynqmp-clk.h" 1
# 12 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zynqmp-clk-ccf.dtsi" 2
/ {
 pss_ref_clk: pss_ref_clk {
  bootph-all;
  compatible = "fixed-clock";
  #clock-cells = <0>;
  clock-frequency = <33333333>;
 };

 video_clk: video_clk {
  bootph-all;
  compatible = "fixed-clock";
  #clock-cells = <0>;
  clock-frequency = <27000000>;
 };

 pss_alt_ref_clk: pss_alt_ref_clk {
  bootph-all;
  compatible = "fixed-clock";
  #clock-cells = <0>;
  clock-frequency = <0>;
 };

 gt_crx_ref_clk: gt_crx_ref_clk {
  bootph-all;
  compatible = "fixed-clock";
  #clock-cells = <0>;
  clock-frequency = <108000000>;
 };

 aux_ref_clk: aux_ref_clk {
  bootph-all;
  compatible = "fixed-clock";
  #clock-cells = <0>;
  clock-frequency = <27000000>;
 };
};

&zynqmp_firmware {
 zynqmp_clk: clock-controller {
  bootph-all;
  #clock-cells = <1>;
  compatible = "xlnx,zynqmp-clk";
  clocks = <&pss_ref_clk>, <&video_clk>, <&pss_alt_ref_clk>,
    <&aux_ref_clk>, <&gt_crx_ref_clk>;
  clock-names = "pss_ref_clk", "video_clk", "pss_alt_ref_clk",
         "aux_ref_clk", "gt_crx_ref_clk";
 };
};

&can0 {
 clocks = <&zynqmp_clk 63>, <&zynqmp_clk 31>;
};

&can1 {
 clocks = <&zynqmp_clk 64>, <&zynqmp_clk 31>;
};

&psu_cortexa53_0 {
 clocks = <&zynqmp_clk 10>;
};

&fpd_dma_chan1 {
 clocks = <&zynqmp_clk 19>, <&zynqmp_clk 31>;
};

&fpd_dma_chan2 {
 clocks = <&zynqmp_clk 19>, <&zynqmp_clk 31>;
};

&fpd_dma_chan3 {
 clocks = <&zynqmp_clk 19>, <&zynqmp_clk 31>;
};

&fpd_dma_chan4 {
 clocks = <&zynqmp_clk 19>, <&zynqmp_clk 31>;
};

&fpd_dma_chan5 {
 clocks = <&zynqmp_clk 19>, <&zynqmp_clk 31>;
};

&fpd_dma_chan6 {
 clocks = <&zynqmp_clk 19>, <&zynqmp_clk 31>;
};

&fpd_dma_chan7 {
 clocks = <&zynqmp_clk 19>, <&zynqmp_clk 31>;
};

&fpd_dma_chan8 {
 clocks = <&zynqmp_clk 19>, <&zynqmp_clk 31>;
};

&gpu {
 clocks = <&zynqmp_clk 24>, <&zynqmp_clk 25>;
};

&lpd_dma_chan1 {
 clocks = <&zynqmp_clk 68>, <&zynqmp_clk 31>;
};

&lpd_dma_chan2 {
 clocks = <&zynqmp_clk 68>, <&zynqmp_clk 31>;
};

&lpd_dma_chan3 {
 clocks = <&zynqmp_clk 68>, <&zynqmp_clk 31>;
};

&lpd_dma_chan4 {
 clocks = <&zynqmp_clk 68>, <&zynqmp_clk 31>;
};

&lpd_dma_chan5 {
 clocks = <&zynqmp_clk 68>, <&zynqmp_clk 31>;
};

&lpd_dma_chan6 {
 clocks = <&zynqmp_clk 68>, <&zynqmp_clk 31>;
};

&lpd_dma_chan7 {
 clocks = <&zynqmp_clk 68>, <&zynqmp_clk 31>;
};

&lpd_dma_chan8 {
 clocks = <&zynqmp_clk 68>, <&zynqmp_clk 31>;
};

&nand0 {
 clocks = <&zynqmp_clk 60>, <&zynqmp_clk 31>;
};

&gem0 {
 clocks = <&zynqmp_clk 31>, <&zynqmp_clk 104>,
   <&zynqmp_clk 45>, <&zynqmp_clk 49>,
   <&zynqmp_clk 44>;
 assigned-clocks = <&zynqmp_clk 44>;
};

&gem1 {
 clocks = <&zynqmp_clk 31>, <&zynqmp_clk 105>,
   <&zynqmp_clk 46>, <&zynqmp_clk 50>,
   <&zynqmp_clk 44>;
 assigned-clocks = <&zynqmp_clk 44>;
};

&gem2 {
 clocks = <&zynqmp_clk 31>, <&zynqmp_clk 106>,
   <&zynqmp_clk 47>, <&zynqmp_clk 51>,
   <&zynqmp_clk 44>;
 assigned-clocks = <&zynqmp_clk 44>;
};

&gem3 {
 clocks = <&zynqmp_clk 31>, <&zynqmp_clk 107>,
   <&zynqmp_clk 48>, <&zynqmp_clk 52>,
   <&zynqmp_clk 44>;
 assigned-clocks = <&zynqmp_clk 44>;
};

&gpio {
 clocks = <&zynqmp_clk 31>;
};

&i2c0 {
 clocks = <&zynqmp_clk 61>;
};

&i2c1 {
 clocks = <&zynqmp_clk 62>;
};

&perf_monitor_ocm {
 clocks = <&zynqmp_clk 31>;
};

&perf_monitor_ddr {
 clocks = <&zynqmp_clk 28>;
};

&perf_monitor_cci {
 clocks = <&zynqmp_clk 28>;
};

&perf_monitor_lpd {
 clocks = <&zynqmp_clk 31>;
};

&pcie {
 clocks = <&zynqmp_clk 23>;
};

&qspi {
 clocks = <&zynqmp_clk 53>, <&zynqmp_clk 31>;
};

&sata {
 clocks = <&zynqmp_clk 22>;
};

&sdhci0 {
 clocks = <&zynqmp_clk 54>, <&zynqmp_clk 31>;
 assigned-clocks = <&zynqmp_clk 54>;
};

&sdhci1 {
 clocks = <&zynqmp_clk 55>, <&zynqmp_clk 31>;
 assigned-clocks = <&zynqmp_clk 55>;
};

&spi0 {
 clocks = <&zynqmp_clk 58>, <&zynqmp_clk 31>;
};

&spi1 {
 clocks = <&zynqmp_clk 59>, <&zynqmp_clk 31>;
};

&ttc0 {
 clocks = <&zynqmp_clk 31>;
};

&ttc1 {
 clocks = <&zynqmp_clk 31>;
};

&ttc2 {
 clocks = <&zynqmp_clk 31>;
};

&ttc3 {
 clocks = <&zynqmp_clk 31>;
};

&uart0 {
 clocks = <&zynqmp_clk 56>, <&zynqmp_clk 31>;
 assigned-clocks = <&zynqmp_clk 56>;
};

&uart1 {
 clocks = <&zynqmp_clk 57>, <&zynqmp_clk 31>;
 assigned-clocks = <&zynqmp_clk 57>;
};

&usb0 {
 clocks = <&zynqmp_clk 32>, <&zynqmp_clk 34>;
 assigned-clocks = <&zynqmp_clk 32>, <&zynqmp_clk 34>;
};

&dwc3_0 {
 clocks = <&zynqmp_clk 34>;
};

&usb1 {
 clocks = <&zynqmp_clk 33>, <&zynqmp_clk 34>;
 assigned-clocks = <&zynqmp_clk 33>, <&zynqmp_clk 34>;
};

&dwc3_1 {
 clocks = <&zynqmp_clk 34>;
};

&watchdog0 {
 clocks = <&zynqmp_clk 75>;
};

&lpd_watchdog {
 clocks = <&zynqmp_clk 112>;
};

&xilinx_ams {
 clocks = <&zynqmp_clk 70>;
};

&zynqmp_dpdma {
 clocks = <&zynqmp_clk 20>;
 assigned-clocks = <&zynqmp_clk 20>;
};

&zynqmp_dpsub {
 clocks = <&zynqmp_clk 28>,
   <&zynqmp_clk 17>,
   <&zynqmp_clk 16>;
 assigned-clocks = <&zynqmp_clk 18>,
     <&zynqmp_clk 17>,
     <&zynqmp_clk 16>;
};

&zynqmp_dp_snd_codec0 {
 clocks = <&zynqmp_clk 17>;
};
# 4 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/system-top.dts" 2
# 1 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/pl.dtsi" 1
/ {
 amba_pl: amba_pl {
  ranges;
  compatible = "simple-bus";
  #address-cells = <2>;
  #size-cells = <2>;
  firmware-name = "top_wrapper.bit.bin";
  clocking1: clocking1 {
   compatible = "xlnx,fclk";
   status = "okay";
   assigned-clocks = <&zynqmp_clk 72>;
   assigned-clock-rates = <333300018>;
   #clock-cells = <0>;
   clock-output-names = "fabric_clk";
   clocks = <&zynqmp_clk 72>;
  };
  clocking0: clocking0 {
   compatible = "xlnx,fclk";
   status = "okay";
   assigned-clocks = <&zynqmp_clk 71>;
   assigned-clock-rates = <99990005>;
   #clock-cells = <0>;
   clock-output-names = "fabric_clk";
   clocks = <&zynqmp_clk 71>;
  };
  afi0: afi0 {
   status = "okay";
   compatible = "xlnx,afi-fpga";
   resets = <&zynqmp_reset 116>, <&zynqmp_reset 117>, <&zynqmp_reset 118>, <&zynqmp_reset 119>;
   config-afi = < 0 0>, <1 0>, <2 0>, <3 0>, <4 0>, <5 0>, <6 0>, <7 0>, <8 0>, <9 0>, <10 0>, <11 0>, <12 2>, <13 2>, <14 0xa00>, <15 0x000>;
  };
  misc_clk_1: misc_clk_1 {
   clock-div = <1>;
   compatible = "fixed-factor-clock";
   clock-mult = <3>;
   clocks = <&zynqmp_clk 71>;
   #clock-cells = <0>;
  };
  misc_clk_0: misc_clk_0 {
   clock-div = <1>;
   compatible = "fixed-factor-clock";
   clock-mult = <6>;
   clocks = <&zynqmp_clk 71>;
   #clock-cells = <0>;
  };
  hier_dpu_DPUCZDX8G: dpuczdx8g@8f000000 {
   xlnx,load-parallel = <2>;
   xlnx,dpu2-dbank-wgt-n = <0>;
   xlnx,dpu1-ubank-wgt-n = <0>;
   xlnx,sum-axi-protocol = <1>;
   xlnx,dpu3-hp2-id-bw = <2>;
   xlnx,dpu3-ubank-wgt-n = <0>;
   xlnx,s-axi-slaves-base-addr = <0x8f000000>;
   xlnx,rable = <0>;
   xlnx,conv-wr-parallel = <1>;
   xlnx,sfm-ena = <1>;
   xlnx,ip-name = "dpuczdx8g";
   xlnx,ver-dpu-num = <3>;
   xlnx,load-img-mean = <0>;
   xlnx,alu-parallel-user = <4>;
   reg = <0x0 0x8f000000 0x0 0x1000000>;
   xlnx,bank-bias = <1>;
   xlnx,sum-s-axi-data-bw = <32>;
   xlnx,hp1-id-bw = <2>;
   xlnx,dnndk-print = "Number , of , DPU , Cores:3;Arch , of , DPU:B4096;RAM , Usage:Low;Channel , Augmentation:Enabled;DepthWiseConv:Enabled;AveragePool:Enabled;Conv , ReLU , Type:ReLU , + , LeakyReLU , + , ReLU6;Number , of , SFM , cores:1;S-AXI , Clock , Mode:Independent;dpu_2x , Clock , Gating:Enabled;DSP48 , Maximal , Cascade , Length:4;DSP48 , Usage:High;Ultra-RAM , Use , per , DPU:0;Enable , timestamp , auto-update:Enabled;Target , Version:1.4.1;AXI , Protocol:AXI4;S-AXI , Data , Width:32;M-AXI , GP , Data , Width:32;M-AXI , HP , Data , Width , (DPU):128;M-AXI , HP , Data , Width , (SFM):128;M-AXI , ID , Width:2;DSP , Slice , Count:2144;Ultra-RAM , Count:0.0;Block-RAM , Count:769.0";
   xlnx,time-day = <9>;
   xlnx,sum-sfm-hp-data-bw = <128>;
   xlnx,dbank-wgt-n = <0>;
   xlnx,uram-n-user = <0>;
   xlnx,ram-depth-img = <3>;
   xlnx,dpu1-dbank-img-n = <0>;
   xlnx,dpu3-dbank-bias = <0>;
   xlnx,dpu2-ubank-bias = <0>;
   xlnx,sum-gp-data-bw = <32>;
   xlnx,dpu3-dbank-img-n = <0>;
   xlnx,dpu2-ubank-img-n = <0>;
   xlnx,sys-ip-ver = <0x41>;
   interrupt-names = "dpu0_interrupt" , "dpu1_interrupt" , "dpu2_interrupt" , "sfm_interrupt";
   xlnx,dpu2-hp0-id-bw = <2>;
   xlnx,ram-depth-wgt = <3>;
   xlnx,ubank-img-n-user = <0>;
   xlnx,time-month = <5>;
   xlnx,dpu3-hp1-id-bw = <2>;
   compatible = "xlnx,dpuczdx8g-4.1";
   xlnx,dpu1-hp3-id-bw = <2>;
   xlnx,sum-ver-target = "1.4.1";
   xlnx,bbank-img-n = <16>;
   xlnx,git-commit-id = <0x7d32c41>;
   xlnx,conv-dsp-casc-max = <4>;
   xlnx,ubank-bias = <0>;
   xlnx,arch-ocp = <16>;
   interrupt-parent = <&imux>;
   xlnx,ubank-img-n = <0>;
   xlnx,git-commit-time = <2023022121>;
   xlnx,sum-hp-data-bw = <128>;
   xlnx,sum-bram-n = <769>;
   xlnx,conv-dsp-num = <640>;
   xlnx,hp0-id-bw = <2>;
   xlnx,arch-hp-bw = <3>;
   xlnx,conv-relu6 = <1>;
   xlnx,ver-chip-part = <3>;
   xlnx,s-axi-id-bw = <16>;
   xlnx,dpu1-dbank-bias = <0>;
   xlnx,elew-mult-en = <1>;
   xlnx,alu-parallel = <4>;
   xlnx,conv-dsp-accu-ena = <1>;
   xlnx,ver-ip-rev = <0x0>;
   xlnx,dsp48-ver = "DSP48E2";
   xlnx,alu-leakyrelu = <0>;
   xlnx,git-commit-user = "jasonjia";
   status = "okay";
   xlnx,sys-regmap-size = <12>;
   xlnx,dpu3-hp0-id-bw = <2>;
   xlnx,name = "hier_dpu_DPUCZDX8G";
   xlnx,bank-img-n = <16>;
   xlnx,dpu1-dbank-wgt-n = <0>;
   xlnx,dpu1-hp2-id-bw = <2>;
   interrupts = < 0 89 4 0 90 4 0 91 4 0 92 4 >;
   xlnx,sum-uram-n = <0>;
   xlnx,dpu3-dbank-wgt-n = <0>;
   xlnx,dpu2-ubank-wgt-n = <0>;
   xlnx,dpu2-hp3-id-bw = <2>;
   xlnx,arch-pp = <8>;
   xlnx,save-argmax-ena = <1>;
   xlnx,ram-depth-bias = <3>;
   xlnx,dpu3-ubank-bias = <0>;
   xlnx,arch = <4096>;
   xlnx,sfm-hp-data-bw = <128>;
   xlnx,bbank-wgt-n = <17>;
   clocks = <&misc_clk_0>, <&misc_clk_0>, <&misc_clk_0>, <&misc_clk_1>, <&zynqmp_clk 71>;
   xlnx,ubank-bias-user = <0>;
   xlnx,s-axi-freq-mhz = <100>;
   xlnx,time-hour = <15>;
   xlnx,bbank-bias = <1>;
   xlnx,ubank-wgt-n = <0>;
   xlnx,hp3-id-bw = <2>;
   xlnx,arch-data-bw = <1>;
   xlnx,sys-ip-type = <1>;
   xlnx,edk-iptype = "PERIPHERAL";
   xlnx,dwcv-ena = <1>;
   xlnx,dpu1-ubank-img-n = <0>;
   xlnx,dpu2-dbank-img-n = <0>;
   xlnx,s-axi-awrlen-bw = <8>;
   xlnx,dpu1-gp-id-bw = <2>;
   clock-names = "dpu1_2x_clk" , "dpu2_2x_clk" , "dpu_2x_clk" , "m_axi_dpu_aclk" , "s_axi_aclk";
   xlnx,ubank-wgt-n-user = <0>;
   xlnx,sfm-dsp-num = <14>;
   xlnx,dpu3-ubank-img-n = <0>;
   xlnx,arch-icp = <16>;
   xlnx,save-dsp-num = <1>;
   xlnx,ram-depth-mean = <1>;
   xlnx,dpu1-hp1-id-bw = <2>;
   xlnx,ver-target = <0x141>;
   xlnx,load-dsp-num = <1>;
   xlnx,pool-average = <1>;
   xlnx,dpu2-hp2-id-bw = <2>;
   xlnx,sfm-hp0-id-bw = <2>;
   xlnx,arch-img-bkgrp = <2>;
   xlnx,s-axi-clk-independent = <1>;
   xlnx,misc-wr-parallel = <1>;
   xlnx,dpu3-hp3-id-bw = <2>;
   xlnx,dpu1-ubank-bias = <0>;
   xlnx,dpu2-dbank-bias = <0>;
   xlnx,time-year = <25>;
   xlnx,hp-data-bw = <128>;
   xlnx,dbank-img-n = <0>;
   xlnx,sum-dsp-num = <2144>;
   xlnx,bank-wgt-n = <17>;
   xlnx,load-augm = <1>;
   xlnx,dpu2-gp-id-bw = <2>;
   xlnx,time-quarter = <2>;
   xlnx,save-parallel = <2>;
   xlnx,conv-leakyrelu = <1>;
   xlnx,sys-regmap-ver = <0x1>;
   xlnx,hp2-id-bw = <2>;
   xlnx,clk-gating-ena = <1>;
   xlnx,alu-dsp-num = <68>;
   xlnx,dbank-bias = <0>;
   xlnx,timestamp-ena = <1>;
   xlnx,conv-relu-addon = <3>;
   xlnx,gp-id-bw = <2>;
   xlnx,elew-parallel = <4>;
   xlnx,dpu1-hp0-id-bw = <2>;
   xlnx,dpu3-gp-id-bw = <2>;
   xlnx,dpu2-hp1-id-bw = <2>;
   xlnx,axi-protocol = <1>;
  };
 };
};
# 5 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/system-top.dts" 2
# 1 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/pcw.dtsi" 1
 &psu_cortexa53_0 {
  xlnx,psu-ep = <1>;
  xlnx,rable = <0>;
  xlnx,pss-video-ref-clk-freq = <33333000>;
  xlnx,ip-name = "psu_cortexa53";
  xlnx,cpu-1x-clk-freq-hz = <0>;
  xlnx,psu-silicon-version = <3>;
  cpu-frequency = <1333200073>;
  xlnx,cpu-clk-freq-hz = <1333200073>;
  xlnx,pss-gt-ref-clk-freq = <33333000>;
  xlnx,pss-ref-clk-freq = <33330000>;
  bus-handle = <&amba>;
  xlnx,pss-aux-ref-clk-freq = <33333000>;
  xlnx,psu-device = "PS8a";
  xlnx,timestamp-clk-freq = <99990005>;
  stamp-frequency = <99990005>;
  xlnx,pss-alt-ref-clk-freq = <33333000>;
 };
 &psu_cortexa53_1 {
  xlnx,psu-ep = <1>;
  xlnx,rable = <0>;
  xlnx,ip-name = "psu_cortexa53";
  xlnx,cpu-1x-clk-freq-hz = <0>;
  cpu-frequency = <1333200073>;
  xlnx,cpu-clk-freq-hz = <1333200073>;
  xlnx,psu-silicon-version = <3>;
  xlnx,pss-ref-clk-freq = <33330000>;
  bus-handle = <&amba>;
  xlnx,psu-device = "PS8a";
  stamp-frequency = <99990005>;
  xlnx,timestamp-clk-freq = <99990005>;
 };
 &psu_cortexa53_2 {
  xlnx,psu-ep = <1>;
  xlnx,rable = <0>;
  xlnx,ip-name = "psu_cortexa53";
  xlnx,cpu-1x-clk-freq-hz = <0>;
  cpu-frequency = <1333200073>;
  xlnx,cpu-clk-freq-hz = <1333200073>;
  xlnx,psu-silicon-version = <3>;
  xlnx,pss-ref-clk-freq = <33330000>;
  bus-handle = <&amba>;
  xlnx,psu-device = "PS8a";
  stamp-frequency = <99990005>;
  xlnx,timestamp-clk-freq = <99990005>;
 };
 &psu_cortexa53_3 {
  xlnx,psu-ep = <1>;
  xlnx,rable = <0>;
  xlnx,ip-name = "psu_cortexa53";
  xlnx,cpu-1x-clk-freq-hz = <0>;
  cpu-frequency = <1333200073>;
  xlnx,cpu-clk-freq-hz = <1333200073>;
  xlnx,psu-silicon-version = <3>;
  xlnx,pss-ref-clk-freq = <33330000>;
  bus-handle = <&amba>;
  xlnx,psu-device = "PS8a";
  stamp-frequency = <99990005>;
  xlnx,timestamp-clk-freq = <99990005>;
 };
 &amba {
  psu_r5_tcm_ram_global: psu_r5_tcm_ram@ffe00000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-r5-tcm-ram-1.0" , "mmio-sram";
   status = "okay";
   power-domains = <&zynqmp_firmware 15>;
   xlnx,ip-name = "psu_r5_tcm_ram";
   reg = <0x0 0xffe00000 0x0 0x40000>;
   xlnx,name = "psu_r5_tcm_ram_global";
  };
  psu_r5_tcm_ram_0: psu_r5_tcm_ram@0 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-r5-tcm-ram-1.0";
   status = "okay";
   power-domains = <&zynqmp_firmware 15>;
   xlnx,ip-name = "psu_r5_tcm_ram";
   reg = <0x0 0x0 0x0 0x40000>;
   xlnx,name = "psu_r5_tcm_ram_0";
  };
  psu_ocm_ram_0: psu_ocm_ram_0@fffc0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-ocm-ram-0-1.0";
   status = "okay";
   power-domains = <&zynqmp_firmware 11>;
   xlnx,ip-name = "psu_ocm_ram_0";
   reg = <0x0 0xfffc0000 0x0 0x40000>;
   xlnx,name = "psu_ocm_ram_0";
  };
  psu_r5_1_btcm: psu_r5_1_btcm@20000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-r5-1-btcm-1.0";
   status = "okay";
   power-domains = <&zynqmp_firmware 18>;
   xlnx,ip-name = "psu_r5_1_btcm";
   reg = <0x0 0x20000 0x0 0x10000>;
   xlnx,name = "psu_r5_1_btcm";
  };
  psu_r5_1_btcm_global: psu_r5_1_btcm_global@ffeb0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-r5-1-btcm-global-1.0" , "mmio-sram";
   status = "okay";
   power-domains = <&zynqmp_firmware 18>;
   xlnx,ip-name = "psu_r5_1_btcm_global";
   reg = <0x0 0xffeb0000 0x0 0x10000>;
   xlnx,name = "psu_r5_1_btcm_global";
  };
  psu_r5_1_atcm: psu_r5_1_atcm@0 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-r5-1-atcm-1.0";
   status = "okay";
   power-domains = <&zynqmp_firmware 17>;
   xlnx,ip-name = "psu_r5_1_atcm";
   reg = <0x0 0x0 0x0 0x10000>;
   xlnx,name = "psu_r5_1_atcm";
  };
  psu_r5_1_atcm_global: psu_r5_1_atcm_global@ffe90000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-r5-1-atcm-global-1.0" , "mmio-sram";
   status = "okay";
   power-domains = <&zynqmp_firmware 17>;
   xlnx,ip-name = "psu_r5_1_atcm_global";
   reg = <0x0 0xffe90000 0x0 0x10000>;
   xlnx,name = "psu_r5_1_atcm_global";
  };
  psu_r5_0_btcm_lockstep: psu_r5_0_btcm_lockstep@ffe30000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-r5-0-btcm-lockstep-1.0" , "mmio-sram";
   status = "okay";
   power-domains = <&zynqmp_firmware 16>;
   xlnx,ip-name = "psu_r5_0_btcm_lockstep";
   xlnx,is-hierarchy;
   reg = <0x0 0xffe30000 0x0 0x10000>;
   xlnx,name = "psu_r5_0_btcm_lockstep";
  };
  psu_r5_0_btcm: psu_r5_0_btcm@20000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-r5-0-btcm-1.0";
   status = "okay";
   power-domains = <&zynqmp_firmware 16>;
   xlnx,ip-name = "psu_r5_0_btcm";
   reg = <0x0 0x20000 0x0 0x10000>;
   xlnx,name = "psu_r5_0_btcm";
  };
  psu_r5_0_btcm_global: psu_r5_0_btcm_global@ffe20000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-r5-0-btcm-global-1.0" , "mmio-sram";
   status = "okay";
   power-domains = <&zynqmp_firmware 16>;
   xlnx,ip-name = "psu_r5_0_btcm_global";
   reg = <0x0 0xffe20000 0x0 0x10000>;
   xlnx,name = "psu_r5_0_btcm_global";
  };
  psu_r5_0_atcm_lockstep: psu_r5_0_atcm_lockstep@ffe10000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-r5-0-atcm-lockstep-1.0" , "mmio-sram";
   status = "okay";
   power-domains = <&zynqmp_firmware 15>;
   xlnx,ip-name = "psu_r5_0_atcm_lockstep";
   xlnx,is-hierarchy;
   reg = <0x0 0xffe10000 0x0 0x10000>;
   xlnx,name = "psu_r5_0_atcm_lockstep";
  };
  psu_r5_0_atcm: psu_r5_0_atcm@0 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-r5-0-atcm-1.0";
   status = "okay";
   power-domains = <&zynqmp_firmware 15>;
   xlnx,ip-name = "psu_r5_0_atcm";
   reg = <0x0 0x0 0x0 0x10000>;
   xlnx,name = "psu_r5_0_atcm";
  };
  psu_r5_0_atcm_global: psu_r5_0_atcm_global@ffe00000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-r5-0-atcm-global-1.0" , "mmio-sram";
   status = "okay";
   power-domains = <&zynqmp_firmware 15>;
   xlnx,ip-name = "psu_r5_0_atcm_global";
   reg = <0x0 0xffe00000 0x0 0x10000>;
   xlnx,name = "psu_r5_0_atcm_global";
  };
  psu_bbram_0: psu_bbram_0@ffcd0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-bbram-0-1.0";
   status = "okay";
   xlnx,ip-name = "psu_bbram_0";
   reg = <0x0 0xffcd0000 0x0 0x10000>;
   xlnx,name = "psu_bbram_0";
  };
  psu_pmu_ram: psu_pmu_ram@ffdc0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-pmu-ram-1.0";
   status = "okay";
   xlnx,ip-name = "psu_pmu_ram";
   reg = <0x0 0xffdc0000 0x0 0x20000>;
   xlnx,name = "psu_pmu_ram";
  };
  psu_pmu_iomodule: psu_pmu_iomodule@ffd40000 {
   compatible = "xlnx,psu-pmu-iomodule-1.0";
   xlnx,gpo4-polarity = <0>;
   xlnx,gpo2-enable = <1>;
   xlnx,rable = <0>;
   xlnx,gpo4-enable = <1>;
   xlnx,ip-name = "psu_pmu_iomodule";
   reg = <0x0 0xffd40000 0x0 0x20000>;
   xlnx,gpo3-polarity = <0>;
   xlnx,gpo5-polarity = <0>;
   xlnx,gpo3-enable = <1>;
   status = "okay";
   xlnx,gpo5-enable = <1>;
   xlnx,name = "psu_pmu_iomodule";
   xlnx,gpo2-polarity = <1>;
  };
  psu_pmu_global_0: psu_pmu_global_0@ffd80000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-pmu-global-0-1.0";
   status = "okay";
   xlnx,ip-name = "psu_pmu_global_0";
   reg = <0x0 0xffd80000 0x0 0x40000>;
   xlnx,name = "psu_pmu_global_0";
  };
  psu_mbistjtag: psu_mbistjtag@ffcf0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-mbistjtag-1.0";
   status = "okay";
   xlnx,ip-name = "psu_mbistjtag";
   reg = <0x0 0xffcf0000 0x0 0x10000>;
   xlnx,name = "psu_mbistjtag";
  };
  psu_rsa: psu_rsa@ffce0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-rsa-1.0";
   status = "okay";
   xlnx,ip-name = "psu_rsa";
   reg = <0x0 0xffce0000 0x0 0x10000>;
   xlnx,name = "psu_rsa";
  };
  psu_efuse: psu_efuse@ffcc0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-efuse-1.0";
   status = "okay";
   xlnx,ip-name = "psu_efuse";
   reg = <0x0 0xffcc0000 0x0 0x10000>;
   xlnx,name = "psu_efuse";
  };
  psu_csu_0: psu_csu@ffca0000 {
   xlnx,rable = <0>;
   xlnx,csu-board-interface = "custom";
   compatible = "xlnx,psu-csu-1.0";
   status = "okay";
   xlnx,can-clk-freq-hz = <180000000>;
   xlnx,ip-name = "psu_csu";
   reg = <0x0 0xffca0000 0x0 0x10000>;
   xlnx,name = "psu_csu_0";
  };
  psu_fpd_gpv: psu_fpd_gpv@fd700000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-fpd-gpv-1.0";
   status = "okay";
   xlnx,ip-name = "psu_fpd_gpv";
   reg = <0x0 0xfd700000 0x0 0x100000>;
   xlnx,name = "psu_fpd_gpv";
  };
  psu_cci_gpv: psu_cci_gpv@fd6e0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-cci-gpv-1.0";
   status = "okay";
   xlnx,ip-name = "psu_cci_gpv";
   reg = <0x0 0xfd6e0000 0x0 0x10000>;
   xlnx,name = "psu_cci_gpv";
  };
  psu_fpd_slcr_secure: psu_fpd_slcr_secure@fd690000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-fpd-slcr-secure-1.0";
   status = "okay";
   xlnx,ip-name = "psu_fpd_slcr_secure";
   reg = <0x0 0xfd690000 0x0 0x40000>;
   xlnx,name = "psu_fpd_slcr_secure";
  };
  psu_fpd_slcr: psu_fpd_slcr@fd610000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-fpd-slcr-1.0";
   status = "okay";
   xlnx,ip-name = "psu_fpd_slcr";
   reg = <0x0 0xfd610000 0x0 0x80000>;
   xlnx,name = "psu_fpd_slcr";
  };
  psu_smmu_reg: psu_smmu_reg@fd5f0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-smmu-reg-1.0";
   status = "okay";
   xlnx,ip-name = "psu_smmu_reg";
   reg = <0x0 0xfd5f0000 0x0 0x10000>;
   xlnx,name = "psu_smmu_reg";
  };
  psu_cci_reg: psu_cci_reg@fd5e0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-cci-reg-1.0";
   status = "okay";
   xlnx,ip-name = "psu_cci_reg";
   reg = <0x0 0xfd5e0000 0x0 0x10000>;
   xlnx,name = "psu_cci_reg";
  };
  psu_fpd_xmpu_cfg: psu_fpd_xmpu_cfg@fd5d0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-fpd-xmpu-cfg-1.0";
   status = "okay";
   xlnx,ip-name = "psu_fpd_xmpu_cfg";
   reg = <0x0 0xfd5d0000 0x0 0x10000>;
   xlnx,name = "psu_fpd_xmpu_cfg";
  };
  psu_apu: psu_apu@fd5c0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-apu-1.0";
   status = "okay";
   xlnx,ip-name = "psu_apu";
   reg = <0x0 0xfd5c0000 0x0 0x10000>;
   xlnx,name = "psu_apu";
  };
  psu_fpd_xmpu_sink: psu_fpd_xmpu_sink@fd4f0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-fpd-xmpu-sink-1.0";
   status = "okay";
   xlnx,ip-name = "psu_fpd_xmpu_sink";
   reg = <0x0 0xfd4f0000 0x0 0x10000>;
   xlnx,name = "psu_fpd_xmpu_sink";
  };
  psu_siou: psu_siou@fd3d0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-siou-1.0";
   status = "okay";
   xlnx,ip-name = "psu_siou";
   reg = <0x0 0xfd3d0000 0x0 0x10000>;
   xlnx,name = "psu_siou";
  };
  psu_afi_5: psu_afi@fd3b0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-afi-1.0";
   status = "okay";
   xlnx,ip-name = "psu_afi";
   reg = <0x0 0xfd3b0000 0x0 0x10000>;
   xlnx,name = "psu_afi_5";
  };
  psu_afi_4: psu_afi@fd3a0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-afi-1.0";
   status = "okay";
   xlnx,ip-name = "psu_afi";
   reg = <0x0 0xfd3a0000 0x0 0x10000>;
   xlnx,name = "psu_afi_4";
  };
  psu_afi_3: psu_afi@fd390000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-afi-1.0";
   status = "okay";
   xlnx,ip-name = "psu_afi";
   reg = <0x0 0xfd390000 0x0 0x10000>;
   xlnx,name = "psu_afi_3";
  };
  psu_afi_2: psu_afi@fd380000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-afi-1.0";
   status = "okay";
   xlnx,ip-name = "psu_afi";
   reg = <0x0 0xfd380000 0x0 0x10000>;
   xlnx,name = "psu_afi_2";
  };
  psu_afi_1: psu_afi@fd370000 {
   xlnx,rable = <0>;
   xlnx,is-cache-coherent = <0>;
   compatible = "xlnx,psu-afi-1.0";
   status = "okay";
   xlnx,ip-name = "psu_afi";
   reg = <0x0 0xfd370000 0x0 0x10000>;
   xlnx,name = "psu_afi_1";
  };
  psu_afi_0: psu_afi@fd360000 {
   xlnx,rable = <0>;
   xlnx,is-cache-coherent = <0>;
   compatible = "xlnx,psu-afi-1.0";
   status = "okay";
   xlnx,ip-name = "psu_afi";
   reg = <0x0 0xfd360000 0x0 0x10000>;
   xlnx,name = "psu_afi_0";
  };
  psu_crf_apb: psu_crf_apb@fd1a0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-crf-apb-1.0";
   status = "okay";
   xlnx,ip-name = "psu_crf_apb";
   reg = <0x0 0xfd1a0000 0x0 0x140000>;
   xlnx,name = "psu_crf_apb";
  };
  psu_ddr_qos_ctrl: psu_ddr_qos_ctrl@fd090000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-ddr-qos-ctrl-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr_qos_ctrl";
   reg = <0x0 0xfd090000 0x0 0x10000>;
   xlnx,name = "psu_ddr_qos_ctrl";
  };
  psu_ddr_phy: psu_ddr_phy@fd080000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-ddr-phy-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr_phy";
   reg = <0x0 0xfd080000 0x0 0x10000>;
   xlnx,name = "psu_ddr_phy";
  };
  psu_ddr_xmpu5_cfg: psu_ddr_xmpu5_cfg@fd050000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-ddr-xmpu5-cfg-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr_xmpu5_cfg";
   reg = <0x0 0xfd050000 0x0 0x10000>;
   xlnx,name = "psu_ddr_xmpu5_cfg";
  };
  psu_ddr_xmpu4_cfg: psu_ddr_xmpu4_cfg@fd040000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-ddr-xmpu4-cfg-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr_xmpu4_cfg";
   reg = <0x0 0xfd040000 0x0 0x10000>;
   xlnx,name = "psu_ddr_xmpu4_cfg";
  };
  psu_ddr_xmpu3_cfg: psu_ddr_xmpu3_cfg@fd030000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-ddr-xmpu3-cfg-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr_xmpu3_cfg";
   reg = <0x0 0xfd030000 0x0 0x10000>;
   xlnx,name = "psu_ddr_xmpu3_cfg";
  };
  psu_ddr_xmpu2_cfg: psu_ddr_xmpu2_cfg@fd020000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-ddr-xmpu2-cfg-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr_xmpu2_cfg";
   reg = <0x0 0xfd020000 0x0 0x10000>;
   xlnx,name = "psu_ddr_xmpu2_cfg";
  };
  psu_ddr_xmpu1_cfg: psu_ddr_xmpu1_cfg@fd010000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-ddr-xmpu1-cfg-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr_xmpu1_cfg";
   reg = <0x0 0xfd010000 0x0 0x10000>;
   xlnx,name = "psu_ddr_xmpu1_cfg";
  };
  psu_ddr_xmpu0_cfg: psu_ddr_xmpu0_cfg@fd000000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-ddr-xmpu0-cfg-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr_xmpu0_cfg";
   reg = <0x0 0xfd000000 0x0 0x10000>;
   xlnx,name = "psu_ddr_xmpu0_cfg";
  };
  psu_ocm_xmpu_cfg: psu_ocm_xmpu_cfg@ffa70000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-ocm-xmpu-cfg-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ocm_xmpu_cfg";
   reg = <0x0 0xffa70000 0x0 0x10000>;
   xlnx,name = "psu_ocm_xmpu_cfg";
  };
  psu_lpd_xppu_sink: psu_lpd_xppu_sink@ff9c0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-lpd-xppu-sink-1.0";
   status = "okay";
   xlnx,ip-name = "psu_lpd_xppu_sink";
   reg = <0x0 0xff9c0000 0x0 0x10000>;
   xlnx,name = "psu_lpd_xppu_sink";
  };
  psu_afi_6: psu_afi@ff9b0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-afi-1.0";
   status = "okay";
   xlnx,ip-name = "psu_afi";
   reg = <0x0 0xff9b0000 0x0 0x10000>;
   xlnx,name = "psu_afi_6";
  };
  psu_rpu: psu_rpu@ff9a0000 {
   xlnx,rable = <0>;
   xlnx,is-cache-coherent = <0>;
   compatible = "xlnx,psu-rpu-1.0";
   status = "okay";
   xlnx,ip-name = "psu_rpu";
   reg = <0x0 0xff9a0000 0x0 0x10000>;
   xlnx,name = "psu_rpu";
  };
  psu_crl_apb: psu_crl_apb@ff5e0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-crl-apb-1.0";
   status = "okay";
   xlnx,ip-name = "psu_crl_apb";
   reg = <0x0 0xff5e0000 0x0 0x280000>;
   xlnx,name = "psu_crl_apb";
  };
  psu_lpd_slcr_secure: psu_lpd_slcr_secure@ff4b0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-lpd-slcr-secure-1.0";
   status = "okay";
   xlnx,ip-name = "psu_lpd_slcr_secure";
   reg = <0x0 0xff4b0000 0x0 0x30000>;
   xlnx,name = "psu_lpd_slcr_secure";
  };
  psu_lpd_slcr: psu_lpd_slcr@ff410000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-lpd-slcr-1.0";
   status = "okay";
   xlnx,ip-name = "psu_lpd_slcr";
   reg = <0x0 0xff410000 0x0 0xa0000>;
   xlnx,name = "psu_lpd_slcr";
  };
  psu_ctrl_ipi: PERIPHERAL@ff380000 {
   xlnx,rable = <0>;
   compatible = "xlnx,PERIPHERAL-1.0";
   reg = <0x0 0xff380000 0x0 0x80000>;
  };
  psu_message_buffers: PERIPHERAL@ff990000 {
   xlnx,rable = <0>;
   compatible = "xlnx,PERIPHERAL-1.0";
   reg = <0x0 0xff990000 0x0 0x10000>;
  };
  psu_iou_scntrs: psu_iou_scntrs@ff260000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-iou-scntrs-1.0";
   status = "okay";
   xlnx,ip-name = "psu_iou_scntrs";
   reg = <0x0 0xff260000 0x0 0x10000>;
   xlnx,name = "psu_iou_scntrs";
  };
  psu_iou_scntr: psu_iou_scntr@ff250000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-iou-scntr-1.0";
   status = "okay";
   xlnx,ip-name = "psu_iou_scntr";
   reg = <0x0 0xff250000 0x0 0x10000>;
   xlnx,name = "psu_iou_scntr";
  };
  psu_iousecure_slcr: psu_iousecure_slcr@ff240000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-iousecure-slcr-1.0";
   status = "okay";
   xlnx,ip-name = "psu_iousecure_slcr";
   reg = <0x0 0xff240000 0x0 0x10000>;
   xlnx,name = "psu_iousecure_slcr";
  };
  psu_iouslcr_0: psu_iouslcr@ff180000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-iouslcr-1.0";
   status = "okay";
   xlnx,ip-name = "psu_iouslcr";
   reg = <0x0 0xff180000 0x0 0xc0000>;
   xlnx,name = "psu_iouslcr_0";
  };
  psu_r5_ddr_0: psu_ddr@100000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-ddr-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr";
   reg = <0x0 0x100000 0x0 0x7fe00000>;
   xlnx,name = "psu_r5_ddr_0";
  };
  psu_ddr_0: psu_ddr@0 {
   xlnx,rable = <0>;
   xlnx,ddrc-brc-mapping = <0>;
   compatible = "xlnx,psu-ddr-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr";
   xlnx,ddrc-video-buffer-size = <0>;
   xlnx,ddrc-act-freq-hz = <1066560058>;
   reg = <0x0 0x0 0x0 0x7ff00000 0x0 0x7ff00000 0x0 0x100000>;
   xlnx,ddrc-ddr4-addr-mapping = <1>;
   xlnx,name = "psu_ddr_0";
  };
  psu_ddr_1: psu_ddr@800000000 {
   xlnx,rable = <0>;
   compatible = "xlnx,psu-ddr-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr";
   reg = <0x00000008 0x00000000 0x0 0x80000000>;
   xlnx,name = "psu_ddr_1";
  };
  psu_qspi_linear_0: psu_qspi_linear@c0000000 {
   reg = <0x0 0xc0000000 0x0 0x20000000>;
  };
 };
 &psu_pmu_0 {
  xlnx,psu-ep = <1>;
  xlnx,addr-tag-bits = <0>;
  xlnx,number-of-wr-addr-brk = <1>;
  xlnx,dynamic-bus-sizing = <0>;
  xlnx,rable = <0>;
  d-cache-highaddr = <0x3fffffff>;
  xlnx,ip-name = "psu_pmu";
  xlnx,use-interrupt = <1>;
  xlnx,dcache-force-tag-lutram = <0>;
  xlnx,pc-width = <32>;
  xlnx,async-interrupt = <1>;
  xlnx,interrupt-is-edge = <0>;
  xlnx,use-mmu = <0>;
  xlnx,icache-victims = <0>;
  xlnx,use-reorder-instr = <1>;
  xlnx,dcache-always-used = <0>;
  xlnx,ill-opcode-exception = <1>;
  xlnx,use-div = <0>;
  xlnx,psu-device = "PSSa";
  i-cache-baseaddr = <0x0>;
  xlnx,trace = <1>;
  xlnx,use-config-reset = <0>;
  xlnx,pvr = <0>;
  xlnx,dcache-byte-size = <8192>;
  xlnx,is-cache-coherent = <0>;
  xlnx,data-size = <32>;
  xlnx,fault-tolerant = <1>;
  xlnx,mmu-zones = <16>;
  d-cache-line-size = <16>;
  xlnx,enable-discrete-ports = <1>;
  xlnx,mmu-privileged-instr = <0>;
  xlnx,sco = <0>;
  clock-frequency = <0xaba9500>;
  xlnx,use-ext-brk = <0>;
  xlnx,debug-enabled = <1>;
  xlnx,endianness = <1>;
  i-cache-line-size = <16>;
  xlnx,fsl-exception = <0>;
  xlnx,use-extended-fsl-instr = <0>;
  xlnx,reset-msr = <0x0>;
  xlnx,branch-target-cache-size = <0>;
  xlnx,dcache-use-writeback = <0>;
  xlnx,div-zero-exception = <0>;
  xlnx,mmu-tlb-access = <3>;
  xlnx,cache-byte-size = <8192>;
  bus-handle = <&amba>;
  xlnx,pvr-user2 = <0x0>;
  xlnx,opcode-0x0-illegal = <1>;
  xlnx,base-vectors = <0xffd00000>;
  xlnx,ecc-use-ce-exception = <0>;
  xlnx,icache-line-len = <4>;
  microblaze_ddr_reserve_sa = <0x7ff00000>;
  xlnx,use-dcache = <0>;
  xlnx,use-barrel = <1>;
  xlnx,allow-dcache-wr = <1>;
  microblaze_ddr_reserve_ea = <0x7fffffff>;
  i-cache-highaddr = <0x3fffffff>;
  xlnx,allow-icache-wr = <1>;
  xlnx,fpu-exception = <0>;
  xlnx,g-use-exceptions = <1>;
  xlnx,dcache-line-len = <4>;
  xlnx,icache-streams = <0>;
  xlnx,pss-ref-clk-freq = <33333000>;
  i-cache-size = <8192>;
  xlnx,use-stack-protection = <1>;
  xlnx,use-hw-mul = <0>;
  xlnx,pmu-board-interface = "custom";
  xlnx,use-fpu = <0>;
  xlnx,edge-is-positive = <0>;
  d-cache-size = <8192>;
  xlnx,use-pcmp-instr = <1>;
  xlnx,use-icache = <0>;
  xlnx,dcache-addr-tag = <0>;
  d-cache-baseaddr = <0x0>;
  xlnx,number-of-rd-addr-brk = <1>;
  xlnx,ddr-reserve-sa = <0x7ff00000>;
  xlnx,lockstep-slave = <0>;
  xlnx,ddr-reserve-ea = <0x7fffffff>;
  xlnx,use-ext-nm-brk = <0>;
  xlnx,icache-always-used = <0>;
  xlnx,lockstep-select = <0>;
  xlnx,mmu-dtlb-size = <4>;
  xlnx,fsl-links = <0>;
  xlnx,dcache-data-width = <0>;
  xlnx,dcache-victims = <0>;
  xlnx,icache-force-tag-lutram = <0>;
  xlnx,use-branch-target-cache = <0>;
  xlnx,unaligned-exceptions = <1>;
  xlnx,freq = <180000000>;
  xlnx,number-of-pc-brk = <1>;
  xlnx,mmu-itlb-size = <2>;
  xlnx,use-msr-instr = <1>;
  xlnx,icache-data-width = <0>;
 };
 &coresight_0 {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_coresight_0";
  xlnx,name = "psu_coresight_0";
 };
 &gic_a53 {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_acpu_gic";
  xlnx,name = "psu_acpu_gic";
 };
 &gic_r5 {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_rcpu_gic";
  xlnx,name = "psu_rcpu_gic";
 };
 &ocm {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_ocm";
  xlnx,name = "psu_ocm";
 };
 &csuwdt_0 {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_wdt";
  xlnx,wdt-clk-freq-hz = <100000000>;
  xlnx,name = "psu_csu_wdt";
 };
 &csudma_0 {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_csudma";
  xlnx,dma-type = <0>;
  xlnx,name = "psu_csudma";
 };
 &smmu {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_smmu_gpv";
  xlnx,name = "psu_smmu_gpv";
 };
 &fpd_dma_chan8 {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_gdma";
  xlnx,dma-mode = <0>;
  xlnx,dma-type = <0>;
  xlnx,name = "psu_gdma_7";
 };
 &fpd_dma_chan7 {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_gdma";
  xlnx,dma-mode = <0>;
  xlnx,dma-type = <0>;
  xlnx,name = "psu_gdma_6";
 };
 &fpd_dma_chan6 {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_gdma";
  xlnx,dma-mode = <0>;
  xlnx,dma-type = <0>;
  xlnx,name = "psu_gdma_5";
 };
 &fpd_dma_chan5 {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_gdma";
  xlnx,dma-mode = <0>;
  xlnx,dma-type = <0>;
  xlnx,name = "psu_gdma_4";
 };
 &fpd_dma_chan4 {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_gdma";
  xlnx,dma-mode = <0>;
  xlnx,dma-type = <0>;
  xlnx,name = "psu_gdma_3";
 };
 &fpd_dma_chan3 {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_gdma";
  xlnx,dma-mode = <0>;
  xlnx,dma-type = <0>;
  xlnx,name = "psu_gdma_2";
 };
 &fpd_dma_chan2 {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_gdma";
  xlnx,dma-mode = <0>;
  xlnx,dma-type = <0>;
  xlnx,name = "psu_gdma_1";
 };
 &fpd_dma_chan1 {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_gdma";
  xlnx,dma-mode = <0>;
  xlnx,dma-type = <0>;
  xlnx,name = "psu_gdma_0";
 };
 &zynqmp_dpdma {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_dpdma";
  xlnx,name = "psu_dpdma";
 };
 &gpu {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_gpu";
  xlnx,tz-nonsecure = <1>;
  xlnx,name = "psu_gpu";
 };
 &zynqmp_dpsub {
  xlnx,max-lanes = <2>;
  phys = <&psgtr 1 6 0 3>, <&psgtr 0 6 1 3>;
  xlnx,rable = <0>;
  status = "okay";
  xlnx,dp-board-interface = "custom";
  xlnx,ip-name = "psu_dp";
  phy-names = "dp-phy0" , "dp-phy1";
  xlnx,tz-nonsecure = <0>;
  xlnx,name = "psu_dp";
 };
 &perf_monitor_cci {
  xlnx,global-count-width = <32>;
  xlnx,enable-32bit-filter-id = <1>;
  xlnx,enable-event-log = <0>;
  xlnx,enable-profile = <0>;
  xlnx,rable = <0>;
  xlnx,metric-count-scale = <1>;
  xlnx,ip-name = "psu_apm";
  xlnx,metrics-sample-count-width = <32>;
  xlnx,fifo-axis-tid-width = <1>;
  xlnx,num-of-counters = <3>;
  xlnx,have-sampled-metric-cnt = <1>;
  xlnx,enable-advanced = <1>;
  xlnx,can-clk-freq-hz = <50000000>;
  xlnx,enable-trace = <0>;
  xlnx,enable-event-count = <1>;
  status = "okay";
  xlnx,fifo-axis-tdata-width = <56>;
  xlnx,num-monitor-slots = <1>;
  xlnx,fifo-axis-depth = <32>;
  xlnx,name = "psu_apm_5";
 };
 &psgtr {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_serdes";
  xlnx,name = "psu_serdes";
 };
 &sata {
  xlnx,rable = <0>;
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,tz-nonsecure-sata0 = <0>;
  xlnx,ip-name = "psu_sata";
  xlnx,sata-board-interface = "custom";
  xlnx,tz-nonsecure-sata1 = <0>;
  xlnx,name = "psu_sata";
 };
 &perf_monitor_ddr {
  xlnx,global-count-width = <32>;
  xlnx,enable-32bit-filter-id = <1>;
  xlnx,enable-event-log = <0>;
  xlnx,enable-profile = <0>;
  xlnx,rable = <0>;
  xlnx,metric-count-scale = <1>;
  xlnx,ip-name = "psu_apm";
  xlnx,metrics-sample-count-width = <32>;
  xlnx,fifo-axis-tid-width = <1>;
  xlnx,num-of-counters = <10>;
  xlnx,have-sampled-metric-cnt = <1>;
  xlnx,enable-advanced = <1>;
  xlnx,can-clk-freq-hz = <50000000>;
  xlnx,enable-trace = <0>;
  xlnx,enable-event-count = <1>;
  status = "okay";
  xlnx,fifo-axis-tdata-width = <56>;
  xlnx,num-monitor-slots = <6>;
  xlnx,fifo-axis-depth = <32>;
  xlnx,name = "psu_apm_0";
 };
 &lpd_dma_chan8 {
  xlnx,rable = <0>;
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,ip-name = "psu_adma";
  xlnx,dma-mode = <1>;
  xlnx,dma-type = <1>;
  xlnx,name = "psu_adma_7";
 };
 &lpd_dma_chan7 {
  xlnx,rable = <0>;
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,ip-name = "psu_adma";
  xlnx,dma-mode = <1>;
  xlnx,dma-type = <1>;
  xlnx,name = "psu_adma_6";
 };
 &lpd_dma_chan6 {
  xlnx,rable = <0>;
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,ip-name = "psu_adma";
  xlnx,dma-mode = <1>;
  xlnx,dma-type = <1>;
  xlnx,name = "psu_adma_5";
 };
 &lpd_dma_chan5 {
  xlnx,rable = <0>;
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,ip-name = "psu_adma";
  xlnx,dma-mode = <1>;
  xlnx,dma-type = <1>;
  xlnx,name = "psu_adma_4";
 };
 &lpd_dma_chan4 {
  xlnx,rable = <0>;
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,ip-name = "psu_adma";
  xlnx,dma-mode = <1>;
  xlnx,dma-type = <1>;
  xlnx,name = "psu_adma_3";
 };
 &lpd_dma_chan3 {
  xlnx,rable = <0>;
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,ip-name = "psu_adma";
  xlnx,dma-mode = <1>;
  xlnx,dma-type = <1>;
  xlnx,name = "psu_adma_2";
 };
 &lpd_dma_chan2 {
  xlnx,rable = <0>;
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,ip-name = "psu_adma";
  xlnx,dma-mode = <1>;
  xlnx,dma-type = <1>;
  xlnx,name = "psu_adma_1";
 };
 &lpd_dma_chan1 {
  xlnx,rable = <0>;
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,ip-name = "psu_adma";
  xlnx,dma-mode = <1>;
  xlnx,dma-type = <1>;
  xlnx,name = "psu_adma_0";
 };
 &rtc {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_rtc";
  xlnx,name = "psu_rtc";
 };
 &xilinx_ams {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,clock-freq = <49>;
  xlnx,ip-name = "psu_ams";
  xlnx,name = "psu_ams";
 };
 &perf_monitor_lpd {
  xlnx,global-count-width = <32>;
  xlnx,enable-32bit-filter-id = <1>;
  xlnx,enable-event-log = <0>;
  xlnx,enable-profile = <0>;
  xlnx,rable = <0>;
  xlnx,metric-count-scale = <1>;
  xlnx,ip-name = "psu_apm";
  xlnx,metrics-sample-count-width = <32>;
  xlnx,fifo-axis-tid-width = <1>;
  xlnx,num-of-counters = <3>;
  xlnx,have-sampled-metric-cnt = <1>;
  xlnx,enable-advanced = <1>;
  xlnx,can-clk-freq-hz = <50000000>;
  xlnx,enable-trace = <0>;
  xlnx,enable-event-count = <1>;
  status = "okay";
  xlnx,fifo-axis-tdata-width = <56>;
  xlnx,num-monitor-slots = <1>;
  xlnx,fifo-axis-depth = <32>;
  xlnx,name = "psu_apm_2";
 };
 &perf_monitor_ocm {
  xlnx,global-count-width = <32>;
  xlnx,enable-32bit-filter-id = <1>;
  xlnx,enable-event-log = <0>;
  xlnx,enable-profile = <0>;
  xlnx,rable = <0>;
  xlnx,metric-count-scale = <1>;
  xlnx,ip-name = "psu_apm";
  xlnx,metrics-sample-count-width = <32>;
  xlnx,fifo-axis-tid-width = <1>;
  xlnx,num-of-counters = <3>;
  xlnx,have-sampled-metric-cnt = <1>;
  xlnx,enable-advanced = <1>;
  xlnx,can-clk-freq-hz = <50000000>;
  xlnx,enable-trace = <0>;
  xlnx,enable-event-count = <1>;
  status = "okay";
  xlnx,fifo-axis-tdata-width = <56>;
  xlnx,num-monitor-slots = <1>;
  xlnx,fifo-axis-depth = <32>;
  xlnx,name = "psu_apm_1";
 };
 &usb0 {
  xlnx,rable = <0>;
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,usb-polarity = <0>;
  xlnx,ip-name = "psu_usb";
  xlnx,usb-reset-mode = <0>;
  xlnx,usb-board-interface = "custom";
  xlnx,tz-nonsecure = <1>;
  xlnx,name = "psu_usb_0";
 };
 &dwc3_0 {
  xlnx,rable = <0>;
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,ip-name = "psu_usb_xhci";
  xlnx,usb-board-interface = "custom";
  xlnx,name = "psu_usb_xhci_0";
 };
 &lpd_xppu {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_lpd_xppu";
  xlnx,name = "psu_lpd_xppu";
 };
 &ipi0 {
  xlnx,rable = <0>;
  xlnx,cpu-name = "APU";
  xlnx,buffer-base = <0xff990400>;
  xlnx,base-address = <0xff300000>;
  status = "okay";
  xlnx,buffer-index = <2>;
  xlnx,ip-name = "psu_ipi";
  xlnx,ipi-target-count = <7>;
  xlnx,int-id = <67>;
  xlnx,bit-position = <0>;
  xlnx,name = "psu_ipi_0";
  psu_ipi_0_0: child@0 {
   xlnx,ipi-bitmask = <1>;
   xlnx,ipi-rsp-msg-buf = <0xff9904a0>;
   xlnx,ipi-id = <0>;
   xlnx,ipi-buf-index = <2>;
   xlnx,ipi-req-msg-buf = <0xff990480>;
  };
  psu_ipi_0_1: child@1 {
   xlnx,ipi-bitmask = <256>;
   xlnx,ipi-rsp-msg-buf = <0xff990420>;
   xlnx,ipi-id = <1>;
   xlnx,ipi-buf-index = <0>;
   xlnx,ipi-req-msg-buf = <0xff990400>;
  };
  psu_ipi_0_2: child@2 {
   xlnx,ipi-bitmask = <512>;
   xlnx,ipi-rsp-msg-buf = <0xff990460>;
   xlnx,ipi-id = <2>;
   xlnx,ipi-buf-index = <1>;
   xlnx,ipi-req-msg-buf = <0xff990440>;
  };
  psu_ipi_0_3: child@3 {
   xlnx,ipi-bitmask = <65536>;
   xlnx,ipi-rsp-msg-buf = <0xff9905e0>;
   xlnx,ipi-id = <3>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9905c0>;
  };
  psu_ipi_0_4: child@4 {
   xlnx,ipi-bitmask = <131072>;
   xlnx,ipi-rsp-msg-buf = <0xff9905e0>;
   xlnx,ipi-id = <4>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9905c0>;
  };
  psu_ipi_0_5: child@5 {
   xlnx,ipi-bitmask = <262144>;
   xlnx,ipi-rsp-msg-buf = <0xff9905e0>;
   xlnx,ipi-id = <5>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9905c0>;
  };
  psu_ipi_0_6: child@6 {
   xlnx,ipi-bitmask = <524288>;
   xlnx,ipi-rsp-msg-buf = <0xff9905e0>;
   xlnx,ipi-id = <6>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9905c0>;
  };
 };
 &ipi1 {
  xlnx,rable = <0>;
  xlnx,cpu-name = "RPU0";
  xlnx,buffer-base = <0xff990000>;
  xlnx,base-address = <0xff310000>;
  status = "okay";
  xlnx,buffer-index = <0>;
  xlnx,ip-name = "psu_ipi";
  xlnx,ipi-target-count = <7>;
  xlnx,int-id = <65>;
  xlnx,bit-position = <8>;
  xlnx,name = "psu_ipi_1";
  psu_ipi_1_0: child@0 {
   xlnx,ipi-bitmask = <1>;
   xlnx,ipi-rsp-msg-buf = <0xff9900a0>;
   xlnx,ipi-id = <0>;
   xlnx,ipi-buf-index = <2>;
   xlnx,ipi-req-msg-buf = <0xff990080>;
  };
  psu_ipi_1_1: child@1 {
   xlnx,ipi-bitmask = <256>;
   xlnx,ipi-rsp-msg-buf = <0xff990020>;
   xlnx,ipi-id = <1>;
   xlnx,ipi-buf-index = <0>;
   xlnx,ipi-req-msg-buf = <0xff990000>;
  };
  psu_ipi_1_2: child@2 {
   xlnx,ipi-bitmask = <512>;
   xlnx,ipi-rsp-msg-buf = <0xff990060>;
   xlnx,ipi-id = <2>;
   xlnx,ipi-buf-index = <1>;
   xlnx,ipi-req-msg-buf = <0xff990040>;
  };
  psu_ipi_1_3: child@3 {
   xlnx,ipi-bitmask = <65536>;
   xlnx,ipi-rsp-msg-buf = <0xff9901e0>;
   xlnx,ipi-id = <3>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9901c0>;
  };
  psu_ipi_1_4: child@4 {
   xlnx,ipi-bitmask = <131072>;
   xlnx,ipi-rsp-msg-buf = <0xff9901e0>;
   xlnx,ipi-id = <4>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9901c0>;
  };
  psu_ipi_1_5: child@5 {
   xlnx,ipi-bitmask = <262144>;
   xlnx,ipi-rsp-msg-buf = <0xff9901e0>;
   xlnx,ipi-id = <5>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9901c0>;
  };
  psu_ipi_1_6: child@6 {
   xlnx,ipi-bitmask = <524288>;
   xlnx,ipi-rsp-msg-buf = <0xff9901e0>;
   xlnx,ipi-id = <6>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9901c0>;
  };
 };
 &ipi2 {
  xlnx,rable = <0>;
  xlnx,cpu-name = "RPU1";
  xlnx,buffer-base = <0xff990200>;
  xlnx,base-address = <0xff320000>;
  status = "okay";
  xlnx,buffer-index = <1>;
  xlnx,ip-name = "psu_ipi";
  xlnx,ipi-target-count = <7>;
  xlnx,int-id = <66>;
  xlnx,bit-position = <9>;
  xlnx,name = "psu_ipi_2";
  psu_ipi_2_0: child@0 {
   xlnx,ipi-bitmask = <1>;
   xlnx,ipi-rsp-msg-buf = <0xff9902a0>;
   xlnx,ipi-id = <0>;
   xlnx,ipi-buf-index = <2>;
   xlnx,ipi-req-msg-buf = <0xff990280>;
  };
  psu_ipi_2_1: child@1 {
   xlnx,ipi-bitmask = <256>;
   xlnx,ipi-rsp-msg-buf = <0xff990220>;
   xlnx,ipi-id = <1>;
   xlnx,ipi-buf-index = <0>;
   xlnx,ipi-req-msg-buf = <0xff990200>;
  };
  psu_ipi_2_2: child@2 {
   xlnx,ipi-bitmask = <512>;
   xlnx,ipi-rsp-msg-buf = <0xff990260>;
   xlnx,ipi-id = <2>;
   xlnx,ipi-buf-index = <1>;
   xlnx,ipi-req-msg-buf = <0xff990240>;
  };
  psu_ipi_2_3: child@3 {
   xlnx,ipi-bitmask = <65536>;
   xlnx,ipi-rsp-msg-buf = <0xff9903e0>;
   xlnx,ipi-id = <3>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9903c0>;
  };
  psu_ipi_2_4: child@4 {
   xlnx,ipi-bitmask = <131072>;
   xlnx,ipi-rsp-msg-buf = <0xff9903e0>;
   xlnx,ipi-id = <4>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9903c0>;
  };
  psu_ipi_2_5: child@5 {
   xlnx,ipi-bitmask = <262144>;
   xlnx,ipi-rsp-msg-buf = <0xff9903e0>;
   xlnx,ipi-id = <5>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9903c0>;
  };
  psu_ipi_2_6: child@6 {
   xlnx,ipi-bitmask = <524288>;
   xlnx,ipi-rsp-msg-buf = <0xff9903e0>;
   xlnx,ipi-id = <6>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9903c0>;
  };
 };
 &ipi3 {
  xlnx,rable = <0>;
  xlnx,cpu-name = "PMU";
  xlnx,buffer-base = <0xff990e00>;
  xlnx,base-address = <0xff330000>;
  status = "okay";
  xlnx,buffer-index = <7>;
  xlnx,ip-name = "psu_ipi";
  xlnx,ipi-target-count = <7>;
  xlnx,int-id = <0>;
  xlnx,bit-position = <16>;
  xlnx,name = "psu_ipi_3";
  psu_ipi_3_0: child@0 {
   xlnx,ipi-bitmask = <1>;
   xlnx,ipi-rsp-msg-buf = <0xff990ea0>;
   xlnx,ipi-id = <0>;
   xlnx,ipi-buf-index = <2>;
   xlnx,ipi-req-msg-buf = <0xff990e80>;
  };
  psu_ipi_3_1: child@1 {
   xlnx,ipi-bitmask = <256>;
   xlnx,ipi-rsp-msg-buf = <0xff990e20>;
   xlnx,ipi-id = <1>;
   xlnx,ipi-buf-index = <0>;
   xlnx,ipi-req-msg-buf = <0xff990e00>;
  };
  psu_ipi_3_2: child@2 {
   xlnx,ipi-bitmask = <512>;
   xlnx,ipi-rsp-msg-buf = <0xff990e60>;
   xlnx,ipi-id = <2>;
   xlnx,ipi-buf-index = <1>;
   xlnx,ipi-req-msg-buf = <0xff990e40>;
  };
  psu_ipi_3_3: child@3 {
   xlnx,ipi-bitmask = <65536>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <3>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_3_4: child@4 {
   xlnx,ipi-bitmask = <131072>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <4>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_3_5: child@5 {
   xlnx,ipi-bitmask = <262144>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <5>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_3_6: child@6 {
   xlnx,ipi-bitmask = <524288>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <6>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
 };
 &ipi4 {
  xlnx,rable = <0>;
  xlnx,cpu-name = "PMU";
  xlnx,buffer-base = <0xff990e00>;
  xlnx,base-address = <0xff331000>;
  status = "okay";
  xlnx,buffer-index = <7>;
  xlnx,ip-name = "psu_ipi";
  xlnx,ipi-target-count = <7>;
  xlnx,int-id = <0>;
  xlnx,bit-position = <17>;
  xlnx,name = "psu_ipi_4";
  psu_ipi_4_0: child@0 {
   xlnx,ipi-bitmask = <1>;
   xlnx,ipi-rsp-msg-buf = <0xff990ea0>;
   xlnx,ipi-id = <0>;
   xlnx,ipi-buf-index = <2>;
   xlnx,ipi-req-msg-buf = <0xff990e80>;
  };
  psu_ipi_4_1: child@1 {
   xlnx,ipi-bitmask = <256>;
   xlnx,ipi-rsp-msg-buf = <0xff990e20>;
   xlnx,ipi-id = <1>;
   xlnx,ipi-buf-index = <0>;
   xlnx,ipi-req-msg-buf = <0xff990e00>;
  };
  psu_ipi_4_2: child@2 {
   xlnx,ipi-bitmask = <512>;
   xlnx,ipi-rsp-msg-buf = <0xff990e60>;
   xlnx,ipi-id = <2>;
   xlnx,ipi-buf-index = <1>;
   xlnx,ipi-req-msg-buf = <0xff990e40>;
  };
  psu_ipi_4_3: child@3 {
   xlnx,ipi-bitmask = <65536>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <3>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_4_4: child@4 {
   xlnx,ipi-bitmask = <131072>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <4>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_4_5: child@5 {
   xlnx,ipi-bitmask = <262144>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <5>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_4_6: child@6 {
   xlnx,ipi-bitmask = <524288>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <6>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
 };
 &ipi5 {
  xlnx,rable = <0>;
  xlnx,cpu-name = "PMU";
  xlnx,buffer-base = <0xff990e00>;
  xlnx,base-address = <0xff332000>;
  status = "okay";
  xlnx,buffer-index = <7>;
  xlnx,ip-name = "psu_ipi";
  xlnx,ipi-target-count = <7>;
  xlnx,int-id = <0>;
  xlnx,bit-position = <18>;
  xlnx,name = "psu_ipi_5";
  psu_ipi_5_0: child@0 {
   xlnx,ipi-bitmask = <1>;
   xlnx,ipi-rsp-msg-buf = <0xff990ea0>;
   xlnx,ipi-id = <0>;
   xlnx,ipi-buf-index = <2>;
   xlnx,ipi-req-msg-buf = <0xff990e80>;
  };
  psu_ipi_5_1: child@1 {
   xlnx,ipi-bitmask = <256>;
   xlnx,ipi-rsp-msg-buf = <0xff990e20>;
   xlnx,ipi-id = <1>;
   xlnx,ipi-buf-index = <0>;
   xlnx,ipi-req-msg-buf = <0xff990e00>;
  };
  psu_ipi_5_2: child@2 {
   xlnx,ipi-bitmask = <512>;
   xlnx,ipi-rsp-msg-buf = <0xff990e60>;
   xlnx,ipi-id = <2>;
   xlnx,ipi-buf-index = <1>;
   xlnx,ipi-req-msg-buf = <0xff990e40>;
  };
  psu_ipi_5_3: child@3 {
   xlnx,ipi-bitmask = <65536>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <3>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_5_4: child@4 {
   xlnx,ipi-bitmask = <131072>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <4>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_5_5: child@5 {
   xlnx,ipi-bitmask = <262144>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <5>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_5_6: child@6 {
   xlnx,ipi-bitmask = <524288>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <6>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
 };
 &ipi6 {
  xlnx,rable = <0>;
  xlnx,cpu-name = "PMU";
  xlnx,buffer-base = <0xff990e00>;
  xlnx,base-address = <0xff333000>;
  status = "okay";
  xlnx,buffer-index = <7>;
  xlnx,ip-name = "psu_ipi";
  xlnx,ipi-target-count = <7>;
  xlnx,int-id = <0>;
  xlnx,bit-position = <19>;
  xlnx,name = "psu_ipi_6";
  psu_ipi_6_0: child@0 {
   xlnx,ipi-bitmask = <1>;
   xlnx,ipi-rsp-msg-buf = <0xff990ea0>;
   xlnx,ipi-id = <0>;
   xlnx,ipi-buf-index = <2>;
   xlnx,ipi-req-msg-buf = <0xff990e80>;
  };
  psu_ipi_6_1: child@1 {
   xlnx,ipi-bitmask = <256>;
   xlnx,ipi-rsp-msg-buf = <0xff990e20>;
   xlnx,ipi-id = <1>;
   xlnx,ipi-buf-index = <0>;
   xlnx,ipi-req-msg-buf = <0xff990e00>;
  };
  psu_ipi_6_2: child@2 {
   xlnx,ipi-bitmask = <512>;
   xlnx,ipi-rsp-msg-buf = <0xff990e60>;
   xlnx,ipi-id = <2>;
   xlnx,ipi-buf-index = <1>;
   xlnx,ipi-req-msg-buf = <0xff990e40>;
  };
  psu_ipi_6_3: child@3 {
   xlnx,ipi-bitmask = <65536>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <3>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_6_4: child@4 {
   xlnx,ipi-bitmask = <131072>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <4>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_6_5: child@5 {
   xlnx,ipi-bitmask = <262144>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <5>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_6_6: child@6 {
   xlnx,ipi-bitmask = <524288>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <6>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
 };
 &mc {
  xlnx,bank-addr-bits = <0x2>;
  xlnx,ddrc-parity = <0>;
  xlnx,addr-mapping = <0x0>;
  xlnx,has-ecc = <0>;
  xlnx,ddr-freq = <1066560058>;
  xlnx,rable = <0>;
  xlnx,row-addr-bits = <0xf>;
  xlnx,ddrc-low-power-auto-self-refresh = <0>;
  xlnx,ip-name = "psu_ddrc";
  xlnx,ddrc-2nd-clock = <0>;
  xlnx,brc-mapping = <0x0>;
  xlnx,ddrc-address-copy = <0>;
  xlnx,ddrc-data-mask-and-dbi = <7>;
  xlnx,ddrc-fine-granularity-refresh-mode = <0>;
  xlnx,ddrc-memory-type = <4>;
  xlnx,col-addr-bits = <0xa>;
  xlnx,ddrc-self-refresh-abort = <0>;
  xlnx,ddrc-max-operating-temparature = <0>;
  status = "okay";
  xlnx,ddrc-address-mirroring = <0>;
  xlnx,ddrc-clk-freq-hz = <533280029>;
  xlnx,qos-enable = <0>;
  xlnx,ddrc-temp-controlled-refresh = <0>;
  xlnx,bg-addr-bits = <0x2>;
  xlnx,ddrc-power-down-enable = <0>;
  xlnx,video-buf-size = <0x0>;
  xlnx,ddrc-memory-address-map = <0>;
  xlnx,name = "psu_ddrc_0";
  xlnx,dddrc-ecc = <0>;
  xlnx,ddrc-clock-stop = <0>;
  xlnx,ddrc-dynamic-ddr-config-enabled = <1>;
 };
 &sdhci1 {
  xlnx,sd-board-interface = "custom";
  xlnx,is-cache-coherent = <0>;
  xlnx,clk-50-ddr-otap-dly = <0x4>;
  xlnx,clk-50-sdr-itap-dly = <0x15>;
  xlnx,has-emio = <0>;
  clock-frequency = <0xb2cbcae>;
  xlnx,tz-nonsecure = <1>;
  xlnx,clk-100-sdr-otap-dly = <0x3>;
  xlnx,rable = <0>;
  xlnx,mio-bank = <0x1>;
  xlnx,ip-name = "psu_sd";
  xlnx,bus-width = <8>;
  xlnx,card-detect = <1>;
  xlnx,has-wp = <1>;
  xlnx,has-cd = <1>;
  xlnx,slot-type = <3>;
  xlnx,clk-50-sdr-otap-dly = <0x5>;
  xlnx,clk-50-ddr-itap-dly = <0x3d>;
  xlnx,has-power = <0>;
  status = "okay";
  xlnx,clk-200-sdr-otap-dly = <0x3>;
  xlnx,sdio-clk-freq-hz = <187481262>;
  xlnx,write-protect = <1>;
  xlnx,name = "psu_sd_1";
 };
 &lpd_watchdog {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_wdt";
  xlnx,wdt-clk-freq-hz = <99990005>;
  xlnx,swdt-board-interface = "custom";
  xlnx,name = "psu_wdt_0";
 };
 &watchdog0 {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "psu_wdt";
  xlnx,wdt-clk-freq-hz = <99990005>;
  xlnx,swdt-board-interface = "custom";
  xlnx,name = "psu_wdt_1";
 };
 &ttc3 {
  xlnx,ttc-board-interface = "custom";
  xlnx,rable = <0>;
  xlnx,ttc-clk2-freq-hz = <100000000>;
  status = "okay";
  xlnx,clock-freq = <100000000>;
  xlnx,ip-name = "psu_ttc";
  xlnx,ttc-clk0-freq-hz = <100000000>;
  xlnx,ttc-clk1-freq-hz = <100000000>;
  xlnx,name = "psu_ttc_3";
 };
 &ttc2 {
  xlnx,ttc-board-interface = "custom";
  xlnx,rable = <0>;
  xlnx,ttc-clk2-freq-hz = <100000000>;
  status = "okay";
  xlnx,clock-freq = <100000000>;
  xlnx,ip-name = "psu_ttc";
  xlnx,ttc-clk0-freq-hz = <100000000>;
  xlnx,ttc-clk1-freq-hz = <100000000>;
  xlnx,name = "psu_ttc_2";
 };
 &ttc1 {
  xlnx,ttc-board-interface = "custom";
  xlnx,rable = <0>;
  xlnx,ttc-clk2-freq-hz = <100000000>;
  status = "okay";
  xlnx,clock-freq = <100000000>;
  xlnx,ip-name = "psu_ttc";
  xlnx,ttc-clk0-freq-hz = <100000000>;
  xlnx,ttc-clk1-freq-hz = <100000000>;
  xlnx,name = "psu_ttc_1";
 };
 &ttc0 {
  xlnx,ttc-board-interface = "custom";
  xlnx,rable = <0>;
  xlnx,ttc-clk2-freq-hz = <100000000>;
  status = "okay";
  xlnx,clock-freq = <100000000>;
  xlnx,ip-name = "psu_ttc";
  xlnx,ttc-clk0-freq-hz = <100000000>;
  xlnx,ttc-clk1-freq-hz = <100000000>;
  xlnx,name = "psu_ttc_0";
 };
 &qspi {
  xlnx,is-cache-coherent = <0>;
  num-cs = <2>;
  xlnx,tz-nonsecure = <1>;
  xlnx,qspi-clk-freq-hz = <124987511>;
  xlnx,rable = <0>;
  xlnx,bus-width = <2>;
  xlnx,ip-name = "psu_qspi";
  xlnx,qspi-board-interface = "custom";
  spi-rx-bus-width = <4>;
  xlnx,connection-mode = <2>;
  spi-tx-bus-width = <4>;
  status = "okay";
  qspi-fbclk = <0>;
  xlnx,clock-freq = <124987511>;
  xlnx,fb-clk = <1>;
  xlnx,qspi-mode = <2>;
  is-dual = <1>;
  xlnx,name = "psu_qspi_0";
  xlnx,qspi-bus-width = <2>;
 };
 &gem3 {
  xlnx,is-cache-coherent = <0>;
  xlnx,has-mdio = <50000000>;
  xlnx,gem-board-interface = "custom";
  phy-mode = "rgmii-id";
  xlnx,tz-nonsecure = <1>;
  xlnx,enet-slcr-1000mbps-div0 = <12>;
  xlnx,enet-slcr-10mbps-div0 = <60>;
  xlnx,rable = <0>;
  xlnx,enet-slcr-1000mbps-div1 = <1>;
  xlnx,enet-slcr-10mbps-div1 = <10>;
  xlnx,enet-tsu-clk-freq-hz = <249975021>;
  xlnx,ip-name = "psu_ethernet";
  xlnx,eth-mode = <1>;
  xlnx,enet-reset = <50000000>;
  xlnx,enet-clk-freq-hz = <124987511>;
  xlnx,enet-slcr-100mbps-div0 = <60>;
  xlnx,ptp-enet-clock = <0x0>;
  local-mac-address = [ 00 0a 23 00 00 00 ];
  status = "okay";
  xlnx,enet-slcr-100mbps-div1 = <1>;
  xlnx,name = "psu_ethernet_3";
 };
 &gpio {
  xlnx,rable = <0>;
  xlnx,gpio-board-interface = "custom";
  xlnx,mio-gpio-mask = <0x5600>;
  status = "okay";
  gpio-mask-high = <0>;
  xlnx,emio-gpio-width = <32>;
  xlnx,ip-name = "psu_gpio";
  gpio-mask-low = <22016>;
  emio-gpio-width = <0x20>;
  xlnx,name = "psu_gpio_0";
 };
 &can1 {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,can-clk-freq-hz = <99990005>;
  xlnx,ip-name = "psu_can";
  xlnx,can-board-interface = "custom";
  xlnx,name = "psu_can_1";
 };
 &i2c1 {
  xlnx,rable = <0>;
  xlnx,i2c-reset = <0>;
  xlnx,has-interrupt = <50000000>;
  status = "okay";
  xlnx,clock-freq = <99990005>;
  xlnx,i2c-clk-freq-hz = <99990005>;
  xlnx,ip-name = "psu_i2c";
  xlnx,iic-board-interface = "custom";
  xlnx,name = "psu_i2c_1";
 };
 &i2c0 {
  xlnx,rable = <0>;
  xlnx,i2c-reset = <0>;
  xlnx,has-interrupt = <50000000>;
  status = "okay";
  xlnx,clock-freq = <99990005>;
  xlnx,i2c-clk-freq-hz = <99990005>;
  xlnx,ip-name = "psu_i2c";
  xlnx,iic-board-interface = "custom";
  xlnx,name = "psu_i2c_0";
 };
 &uart1 {
  xlnx,has-modem = <0>;
  xlnx,uart-clk-freq-hz = <99990005>;
  port-number = <0>;
  xlnx,rable = <0>;
  xlnx,ip-name = "psu_uart";
  xlnx,uart-board-interface = "custom";
  xlnx,baudrate = <115200>;
  cts-override;
  u-boot,dm-pre-reloc;
  status = "okay";
  xlnx,clock-freq = <99990005>;
  xlnx,name = "psu_uart_1";
 };
 &uart0 {
  xlnx,has-modem = <0>;
  xlnx,uart-clk-freq-hz = <99990005>;
  port-number = <0>;
  xlnx,rable = <0>;
  xlnx,ip-name = "psu_uart";
  xlnx,uart-board-interface = "custom";
  xlnx,baudrate = <115200>;
  cts-override;
  u-boot,dm-pre-reloc;
  status = "okay";
  xlnx,clock-freq = <99990005>;
  xlnx,name = "psu_uart_0";
 };
 &ams_ps {
  status = "okay";
 };
 &ams_pl {
  status = "okay";
 };
 &pss_ref_clk {
  clock-frequency = <33330000>;
 };
 &video_clk {
  clock-frequency = <33333000>;
 };
 &cpu_opp_table {
  /delete-node/ opp01;
  /delete-node/ opp02;
  /delete-node/ opp03;
  /delete-node/ opp00;
  opp-1333200073 {
   opp-hz = /bits/ 64 <1333200073>;
   clock-latency-ns = <500000>;
   opp-microvolt = <1000000>;
  };
  opp-666600036 {
   opp-hz = /bits/ 64 <666600036>;
   clock-latency-ns = <500000>;
   opp-microvolt = <1000000>;
  };
  opp-444400024 {
   opp-hz = /bits/ 64 <444400024>;
   clock-latency-ns = <500000>;
   opp-microvolt = <1000000>;
  };
  opp-333300018 {
   opp-hz = /bits/ 64 <333300018>;
   clock-latency-ns = <500000>;
   opp-microvolt = <1000000>;
  };
 };
 &psu_cortexr5_0 {
  xlnx,psu-ep = <1>;
  xlnx,is-cache-coherent = <0>;
  xlnx,tz-nonsecure = <0>;
  xlnx,rable = <0>;
  xlnx,ip-name = "psu_cortexr5";
  xlnx,cpu-1x-clk-freq-hz = <0>;
  cpu-frequency = <499950043>;
  xlnx,cpu-clk-freq-hz = <499950043>;
  xlnx,psu-silicon-version = <3>;
  xlnx,pss-ref-clk-freq = <33330000>;
  access-val = <0xff>;
  bus-handle = <&amba>;
  xlnx,psu-device = "PS8a";
  xlnx,timestamp-clk-freq = <99990005>;
 };
 &psu_cortexr5_1 {
  xlnx,psu-ep = <1>;
  xlnx,is-cache-coherent = <0>;
  xlnx,tz-nonsecure = <0>;
  xlnx,rable = <0>;
  xlnx,ip-name = "psu_cortexr5";
  xlnx,cpu-1x-clk-freq-hz = <0>;
  cpu-frequency = <499950043>;
  xlnx,cpu-clk-freq-hz = <499950043>;
  xlnx,psu-silicon-version = <3>;
  xlnx,pss-ref-clk-freq = <33330000>;
  access-val = <0xff>;
  bus-handle = <&amba>;
  xlnx,psu-device = "PS8a";
  xlnx,timestamp-clk-freq = <99990005>;
 };
 &zynqmp_reset {
  status = "okay";
 };
 &pinctrl0 {
  status = "okay";
 };
# 6 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/system-top.dts" 2
/ {
 device_id = "xczu9eg";
 slrcount = <1>;
 family = "ZynqMP";
 psu_ocm_ram_0_memory: memory@FFFC0000 {
  compatible = "xlnx,psu-ocm-ram-0-1.0" , "mmio-sram";
  xlnx,ip-name = "psu_ocm_ram_0";
  device_type = "memory";
  memory_type = "memory";
  reg = <0x0 0xFFFC0000 0x0 0x40000>;
 };
 psu_r5_ddr_0_memory: memory@100000 {
  compatible = "xlnx,psu-ddr-1.0";
  xlnx,ip-name = "psu_ddr";
  device_type = "memory";
  memory_type = "memory";
  reg = <0x0 0x100000 0x0 0x7FEFFFFF>;
 };
 psu_ddr_0_memory: memory@0 {
  compatible = "xlnx,psu-ddr-1.0";
  xlnx,ip-name = "psu_ddr";
  device_type = "memory";
  memory_type = "memory";
  reg = <0x0 0x0 0x0 0x7FF00000>, <0x0 0x7FF00000 0x0 0x100000>;
 };
 psu_ddr_1_memory: memory@800000000 {
  compatible = "xlnx,psu-ddr-1.0";
  xlnx,ip-name = "psu_ddr";
  device_type = "memory";
  memory_type = "memory";
  reg = <0x00000008 0x00000000 0x0 0x80000000>;
 };
 psu_qspi_linear_0_memory: memory@c0000000 {
  compatible = "xlnx,psu-qspi-linear-1.0-memory";
  xlnx,ip-name = "psu_qspi_linear";
  device_type = "memory";
  memory_type = "linear_flash";
  reg = <0x0 0xc0000000 0x0 0x20000000>;
 };
 chosen {
  bootargs = "earlycon console=ttyPS0,115200 clk_ignore_unused init_fatal_sh=1";
  stdout-path = "serial0:115200n8";
 };
 aliases {
  serial0 = &uart0;
  spi0 = &qspi;
  serial1 = &uart1;
  serial2 = &coresight_0;
  i2c0 = &i2c1;
  i2c1 = &i2c0;
  ethernet0 = &gem3;
 };
 cpus_a53: cpus-a53@0 {
  compatible = "cpus,cluster";
  address-map = <0x0 0xf0000000 &amba 0x0 0xf0000000 0x0 0x10000000>,
         <0x0 0xf9000000 &amba_apu 0x0 0xf9000000 0x0 0x80000>,
         <0x0 0x0 &zynqmp_reset 0x0 0x0 0x0 0x0>,
         <0x0 0x0 &pinctrl0 0x0 0x0 0x0 0x0>,
         <0x0 0xffa50800 &ams_ps 0x0 0xffa50800 0x0 0x400>,
         <0x0 0xffa50c00 &ams_pl 0x0 0xffa50c00 0x0 0x400>,
         <0x0 0xFFFC0000 &psu_ocm_ram_0_memory 0x0 0xFFFC0000 0x0 0x40000>,
         <0x0 0xff300000 &ipi0 0x0 0xff300000 0x0 0x10000>,
         <0x0 0x0 &psu_ddr_0_memory 0x0 0x0 0x0 0x7FF00000>,
         <0x00000008 0x00000000 &psu_ddr_1_memory 0x00000008 0x00000000 0x0 0x80000000>,
         <0x0 0x8f000000 &hier_dpu_DPUCZDX8G 0x0 0x8f000000 0x0 0x1000000>,
         <0x0 0xf9010000 &gic_a53 0x0 0xf9010000 0x0 0x70000>,
         <0x0 0xffa80000 &lpd_dma_chan1 0x0 0xffa80000 0x0 0x10000>,
         <0x0 0xffa90000 &lpd_dma_chan2 0x0 0xffa90000 0x0 0x10000>,
         <0x0 0xffaa0000 &lpd_dma_chan3 0x0 0xffaa0000 0x0 0x10000>,
         <0x0 0xffab0000 &lpd_dma_chan4 0x0 0xffab0000 0x0 0x10000>,
         <0x0 0xffac0000 &lpd_dma_chan5 0x0 0xffac0000 0x0 0x10000>,
         <0x0 0xffad0000 &lpd_dma_chan6 0x0 0xffad0000 0x0 0x10000>,
         <0x0 0xffae0000 &lpd_dma_chan7 0x0 0xffae0000 0x0 0x10000>,
         <0x0 0xffaf0000 &lpd_dma_chan8 0x0 0xffaf0000 0x0 0x10000>,
         <0x0 0xfd360000 &psu_afi_0 0x0 0xfd360000 0x0 0x10000>,
         <0x0 0xfd370000 &psu_afi_1 0x0 0xfd370000 0x0 0x10000>,
         <0x0 0xfd380000 &psu_afi_2 0x0 0xfd380000 0x0 0x10000>,
         <0x0 0xfd390000 &psu_afi_3 0x0 0xfd390000 0x0 0x10000>,
         <0x0 0xfd3a0000 &psu_afi_4 0x0 0xfd3a0000 0x0 0x10000>,
         <0x0 0xfd3b0000 &psu_afi_5 0x0 0xfd3b0000 0x0 0x10000>,
         <0x0 0xff9b0000 &psu_afi_6 0x0 0xff9b0000 0x0 0x10000>,
         <0x0 0xffa50000 &xilinx_ams 0x0 0xffa50000 0x0 0x10000>,
         <0x0 0xfd0b0000 &perf_monitor_ddr 0x0 0xfd0b0000 0x0 0x10000>,
         <0x0 0xffa00000 &perf_monitor_ocm 0x0 0xffa00000 0x0 0x10000>,
         <0x0 0xffa10000 &perf_monitor_lpd 0x0 0xffa10000 0x0 0x10000>,
         <0x0 0xfd490000 &perf_monitor_cci 0x0 0xfd490000 0x0 0x10000>,
         <0x0 0xfd5c0000 &psu_apu 0x0 0xfd5c0000 0x0 0x10000>,
         <0x0 0xff070000 &can1 0x0 0xff070000 0x0 0x10000>,
         <0x0 0xfd6e0000 &psu_cci_gpv 0x0 0xfd6e0000 0x0 0x10000>,
         <0x0 0xfd5e0000 &psu_cci_reg 0x0 0xfd5e0000 0x0 0x10000>,
         <0x0 0xfe800000 &coresight_0 0x0 0xfe800000 0x0 0x800000>,
         <0x0 0xfd1a0000 &psu_crf_apb 0x0 0xfd1a0000 0x0 0x140000>,
         <0x0 0xff5e0000 &psu_crl_apb 0x0 0xff5e0000 0x0 0x280000>,
         <0x0 0xffca0000 &psu_csu_0 0x0 0xffca0000 0x0 0x10000>,
         <0x0 0xffc80000 &csudma_0 0x0 0xffc80000 0x0 0x20000>,
         <0x0 0xff380000 &psu_ctrl_ipi 0x0 0xff380000 0x0 0x80000>,
         <0x0 0xfd080000 &psu_ddr_phy 0x0 0xfd080000 0x0 0x10000>,
         <0x0 0xfd090000 &psu_ddr_qos_ctrl 0x0 0xfd090000 0x0 0x10000>,
         <0x0 0xfd000000 &psu_ddr_xmpu0_cfg 0x0 0xfd000000 0x0 0x10000>,
         <0x0 0xfd010000 &psu_ddr_xmpu1_cfg 0x0 0xfd010000 0x0 0x10000>,
         <0x0 0xfd020000 &psu_ddr_xmpu2_cfg 0x0 0xfd020000 0x0 0x10000>,
         <0x0 0xfd030000 &psu_ddr_xmpu3_cfg 0x0 0xfd030000 0x0 0x10000>,
         <0x0 0xfd040000 &psu_ddr_xmpu4_cfg 0x0 0xfd040000 0x0 0x10000>,
         <0x0 0xfd050000 &psu_ddr_xmpu5_cfg 0x0 0xfd050000 0x0 0x10000>,
         <0x0 0xfd070000 &mc 0x0 0xfd070000 0x0 0x1000>,
         <0x0 0xfd4a0000 &zynqmp_dpsub 0x0 0xfd4a0000 0x0 0x10000>,
         <0x0 0xfd4c0000 &zynqmp_dpdma 0x0 0xfd4c0000 0x0 0x10000>,
         <0x0 0xffcc0000 &psu_efuse 0x0 0xffcc0000 0x0 0x10000>,
         <0x0 0xff0e0000 &gem3 0x0 0xff0e0000 0x0 0x10000>,
         <0x0 0xfd700000 &psu_fpd_gpv 0x0 0xfd700000 0x0 0x100000>,
         <0x0 0xfd610000 &psu_fpd_slcr 0x0 0xfd610000 0x0 0x80000>,
         <0x0 0xfd690000 &psu_fpd_slcr_secure 0x0 0xfd690000 0x0 0x40000>,
         <0x0 0xfd5d0000 &psu_fpd_xmpu_cfg 0x0 0xfd5d0000 0x0 0x10000>,
         <0x0 0xfd4f0000 &psu_fpd_xmpu_sink 0x0 0xfd4f0000 0x0 0x10000>,
         <0x0 0xfd500000 &fpd_dma_chan1 0x0 0xfd500000 0x0 0x10000>,
         <0x0 0xfd510000 &fpd_dma_chan2 0x0 0xfd510000 0x0 0x10000>,
         <0x0 0xfd520000 &fpd_dma_chan3 0x0 0xfd520000 0x0 0x10000>,
         <0x0 0xfd530000 &fpd_dma_chan4 0x0 0xfd530000 0x0 0x10000>,
         <0x0 0xfd540000 &fpd_dma_chan5 0x0 0xfd540000 0x0 0x10000>,
         <0x0 0xfd550000 &fpd_dma_chan6 0x0 0xfd550000 0x0 0x10000>,
         <0x0 0xfd560000 &fpd_dma_chan7 0x0 0xfd560000 0x0 0x10000>,
         <0x0 0xfd570000 &fpd_dma_chan8 0x0 0xfd570000 0x0 0x10000>,
         <0x0 0xff0a0000 &gpio 0x0 0xff0a0000 0x0 0x10000>,
         <0x0 0xfd4b0000 &gpu 0x0 0xfd4b0000 0x0 0x10000>,
         <0x0 0xff020000 &i2c0 0x0 0xff020000 0x0 0x10000>,
         <0x0 0xff030000 &i2c1 0x0 0xff030000 0x0 0x10000>,
         <0x0 0xff250000 &psu_iou_scntr 0x0 0xff250000 0x0 0x10000>,
         <0x0 0xff260000 &psu_iou_scntrs 0x0 0xff260000 0x0 0x10000>,
         <0x0 0xff240000 &psu_iousecure_slcr 0x0 0xff240000 0x0 0x10000>,
         <0x0 0xff180000 &psu_iouslcr_0 0x0 0xff180000 0x0 0xc0000>,
         <0x0 0xff410000 &psu_lpd_slcr 0x0 0xff410000 0x0 0xa0000>,
         <0x0 0xff4b0000 &psu_lpd_slcr_secure 0x0 0xff4b0000 0x0 0x30000>,
         <0x0 0xff980000 &lpd_xppu 0x0 0xff980000 0x0 0x10000>,
         <0x0 0xff9c0000 &psu_lpd_xppu_sink 0x0 0xff9c0000 0x0 0x10000>,
         <0x0 0xffcf0000 &psu_mbistjtag 0x0 0xffcf0000 0x0 0x10000>,
         <0x0 0xff990000 &psu_message_buffers 0x0 0xff990000 0x0 0x10000>,
         <0x0 0xff960000 &ocm 0x0 0xff960000 0x0 0x10000>,
         <0x0 0xffa70000 &psu_ocm_xmpu_cfg 0x0 0xffa70000 0x0 0x10000>,
         <0x0 0xffd80000 &psu_pmu_global_0 0x0 0xffd80000 0x0 0x40000>,
         <0x0 0xff0f0000 &qspi 0x0 0xff0f0000 0x0 0x10000>,
         <0x0 0xc0000000 &psu_qspi_linear_0_memory 0x0 0xc0000000 0x0 0x20000000>,
         <0x0 0xffe00000 &psu_r5_0_atcm_global 0x0 0xffe00000 0x0 0x10000>,
         <0x0 0xffe20000 &psu_r5_0_btcm_global 0x0 0xffe20000 0x0 0x10000>,
         <0x0 0xffe90000 &psu_r5_1_atcm_global 0x0 0xffe90000 0x0 0x10000>,
         <0x0 0xffeb0000 &psu_r5_1_btcm_global 0x0 0xffeb0000 0x0 0x10000>,
         <0x0 0xffe00000 &psu_r5_tcm_ram_global 0x0 0xffe00000 0x0 0x40000>,
         <0x0 0xff9a0000 &psu_rpu 0x0 0xff9a0000 0x0 0x10000>,
         <0x0 0xffce0000 &psu_rsa 0x0 0xffce0000 0x0 0x10000>,
         <0x0 0xffa60000 &rtc 0x0 0xffa60000 0x0 0x10000>,
         <0x0 0xfd0c0000 &sata 0x0 0xfd0c0000 0x0 0x10000>,
         <0x0 0xff170000 &sdhci1 0x0 0xff170000 0x0 0x10000>,
         <0x0 0xfd400000 &psgtr 0x0 0xfd400000 0x0 0x80000>,
         <0x0 0xfd3d0000 &psu_siou 0x0 0xfd3d0000 0x0 0x10000>,
         <0x0 0xfd800000 &smmu 0x0 0xfd800000 0x0 0x800000>,
         <0x0 0xfd5f0000 &psu_smmu_reg 0x0 0xfd5f0000 0x0 0x10000>,
         <0x0 0xff110000 &ttc0 0x0 0xff110000 0x0 0x10000>,
         <0x0 0xff120000 &ttc1 0x0 0xff120000 0x0 0x10000>,
         <0x0 0xff130000 &ttc2 0x0 0xff130000 0x0 0x10000>,
         <0x0 0xff140000 &ttc3 0x0 0xff140000 0x0 0x10000>,
         <0x0 0xff000000 &uart0 0x0 0xff000000 0x0 0x10000>,
         <0x0 0xff010000 &uart1 0x0 0xff010000 0x0 0x10000>,
         <0x0 0xff9d0000 &usb0 0x0 0xff9d0000 0x0 0x10000>,
         <0x0 0xfe200000 &dwc3_0 0x0 0xfe200000 0x0 0x100000>,
         <0x0 0xff150000 &lpd_watchdog 0x0 0xff150000 0x0 0x10000>,
         <0x0 0xfd4d0000 &watchdog0 0x0 0xfd4d0000 0x0 0x10000>;
  #ranges-address-cells = <0x2>;
  #ranges-size-cells = <0x2>;
 };
 cpus_r5_0: cpus-r5@0 {
  compatible = "cpus,cluster";
  address-map = <0xf0000000 &amba 0xf0000000 0x10000000>,
         <0xf9000000 &amba_rpu 0xf9000000 0x3000>,
         <0x0 &zynqmp_reset 0x0 0x0>,
         <0xFFFC0000 &psu_ocm_ram_0_memory 0xFFFC0000 0x40000>,
         <0xff310000 &ipi1 0xff310000 0x10000>,
         <0x100000 &psu_r5_ddr_0_memory 0x100000 0x7FEFFFFF>,
         <0x8f000000 &hier_dpu_DPUCZDX8G 0x8f000000 0x1000000>,
         <0xffa80000 &lpd_dma_chan1 0xffa80000 0x10000>,
         <0xffa90000 &lpd_dma_chan2 0xffa90000 0x10000>,
         <0xffaa0000 &lpd_dma_chan3 0xffaa0000 0x10000>,
         <0xffab0000 &lpd_dma_chan4 0xffab0000 0x10000>,
         <0xffac0000 &lpd_dma_chan5 0xffac0000 0x10000>,
         <0xffad0000 &lpd_dma_chan6 0xffad0000 0x10000>,
         <0xffae0000 &lpd_dma_chan7 0xffae0000 0x10000>,
         <0xffaf0000 &lpd_dma_chan8 0xffaf0000 0x10000>,
         <0xfd360000 &psu_afi_0 0xfd360000 0x10000>,
         <0xfd370000 &psu_afi_1 0xfd370000 0x10000>,
         <0xfd380000 &psu_afi_2 0xfd380000 0x10000>,
         <0xfd390000 &psu_afi_3 0xfd390000 0x10000>,
         <0xfd3a0000 &psu_afi_4 0xfd3a0000 0x10000>,
         <0xfd3b0000 &psu_afi_5 0xfd3b0000 0x10000>,
         <0xff9b0000 &psu_afi_6 0xff9b0000 0x10000>,
         <0xffa50000 &xilinx_ams 0xffa50000 0x10000>,
         <0xfd0b0000 &perf_monitor_ddr 0xfd0b0000 0x10000>,
         <0xffa00000 &perf_monitor_ocm 0xffa00000 0x10000>,
         <0xffa10000 &perf_monitor_lpd 0xffa10000 0x10000>,
         <0xfd490000 &perf_monitor_cci 0xfd490000 0x10000>,
         <0xfd5c0000 &psu_apu 0xfd5c0000 0x10000>,
         <0xff070000 &can1 0xff070000 0x10000>,
         <0xfd6e0000 &psu_cci_gpv 0xfd6e0000 0x10000>,
         <0xfd5e0000 &psu_cci_reg 0xfd5e0000 0x10000>,
         <0xfe800000 &coresight_0 0xfe800000 0x800000>,
         <0xfd1a0000 &psu_crf_apb 0xfd1a0000 0x140000>,
         <0xff5e0000 &psu_crl_apb 0xff5e0000 0x280000>,
         <0xffca0000 &psu_csu_0 0xffca0000 0x10000>,
         <0xffc80000 &csudma_0 0xffc80000 0x20000>,
         <0xff380000 &psu_ctrl_ipi 0xff380000 0x80000>,
         <0xfd080000 &psu_ddr_phy 0xfd080000 0x10000>,
         <0xfd090000 &psu_ddr_qos_ctrl 0xfd090000 0x10000>,
         <0xfd000000 &psu_ddr_xmpu0_cfg 0xfd000000 0x10000>,
         <0xfd010000 &psu_ddr_xmpu1_cfg 0xfd010000 0x10000>,
         <0xfd020000 &psu_ddr_xmpu2_cfg 0xfd020000 0x10000>,
         <0xfd030000 &psu_ddr_xmpu3_cfg 0xfd030000 0x10000>,
         <0xfd040000 &psu_ddr_xmpu4_cfg 0xfd040000 0x10000>,
         <0xfd050000 &psu_ddr_xmpu5_cfg 0xfd050000 0x10000>,
         <0xfd070000 &mc 0xfd070000 0x1000>,
         <0xfd4a0000 &zynqmp_dpsub 0xfd4a0000 0x10000>,
         <0xfd4c0000 &zynqmp_dpdma 0xfd4c0000 0x10000>,
         <0xffcc0000 &psu_efuse 0xffcc0000 0x10000>,
         <0xff0e0000 &gem3 0xff0e0000 0x10000>,
         <0xfd700000 &psu_fpd_gpv 0xfd700000 0x100000>,
         <0xfd610000 &psu_fpd_slcr 0xfd610000 0x80000>,
         <0xfd690000 &psu_fpd_slcr_secure 0xfd690000 0x40000>,
         <0xfd5d0000 &psu_fpd_xmpu_cfg 0xfd5d0000 0x10000>,
         <0xfd4f0000 &psu_fpd_xmpu_sink 0xfd4f0000 0x10000>,
         <0xfd500000 &fpd_dma_chan1 0xfd500000 0x10000>,
         <0xfd510000 &fpd_dma_chan2 0xfd510000 0x10000>,
         <0xfd520000 &fpd_dma_chan3 0xfd520000 0x10000>,
         <0xfd530000 &fpd_dma_chan4 0xfd530000 0x10000>,
         <0xfd540000 &fpd_dma_chan5 0xfd540000 0x10000>,
         <0xfd550000 &fpd_dma_chan6 0xfd550000 0x10000>,
         <0xfd560000 &fpd_dma_chan7 0xfd560000 0x10000>,
         <0xfd570000 &fpd_dma_chan8 0xfd570000 0x10000>,
         <0xff0a0000 &gpio 0xff0a0000 0x10000>,
         <0xfd4b0000 &gpu 0xfd4b0000 0x10000>,
         <0xff020000 &i2c0 0xff020000 0x10000>,
         <0xff030000 &i2c1 0xff030000 0x10000>,
         <0xff250000 &psu_iou_scntr 0xff250000 0x10000>,
         <0xff260000 &psu_iou_scntrs 0xff260000 0x10000>,
         <0xff240000 &psu_iousecure_slcr 0xff240000 0x10000>,
         <0xff180000 &psu_iouslcr_0 0xff180000 0xc0000>,
         <0xff410000 &psu_lpd_slcr 0xff410000 0xa0000>,
         <0xff4b0000 &psu_lpd_slcr_secure 0xff4b0000 0x30000>,
         <0xff980000 &lpd_xppu 0xff980000 0x10000>,
         <0xff9c0000 &psu_lpd_xppu_sink 0xff9c0000 0x10000>,
         <0xffcf0000 &psu_mbistjtag 0xffcf0000 0x10000>,
         <0xff990000 &psu_message_buffers 0xff990000 0x10000>,
         <0xff960000 &ocm 0xff960000 0x10000>,
         <0xffa70000 &psu_ocm_xmpu_cfg 0xffa70000 0x10000>,
         <0xffd80000 &psu_pmu_global_0 0xffd80000 0x40000>,
         <0xff0f0000 &qspi 0xff0f0000 0x10000>,
         <0xc0000000 &psu_qspi_linear_0_memory 0xc0000000 0x20000000>,
         <0xff9a0000 &psu_rpu 0xff9a0000 0x10000>,
         <0xffce0000 &psu_rsa 0xffce0000 0x10000>,
         <0xffa60000 &rtc 0xffa60000 0x10000>,
         <0xfd0c0000 &sata 0xfd0c0000 0x10000>,
         <0xff170000 &sdhci1 0xff170000 0x10000>,
         <0xfd400000 &psgtr 0xfd400000 0x80000>,
         <0xfd3d0000 &psu_siou 0xfd3d0000 0x10000>,
         <0xfd800000 &smmu 0xfd800000 0x800000>,
         <0xfd5f0000 &psu_smmu_reg 0xfd5f0000 0x10000>,
         <0xff110000 &ttc0 0xff110000 0x10000>,
         <0xff120000 &ttc1 0xff120000 0x10000>,
         <0xff130000 &ttc2 0xff130000 0x10000>,
         <0xff140000 &ttc3 0xff140000 0x10000>,
         <0xff000000 &uart0 0xff000000 0x10000>,
         <0xff010000 &uart1 0xff010000 0x10000>,
         <0xff9d0000 &usb0 0xff9d0000 0x10000>,
         <0xfe200000 &dwc3_0 0xfe200000 0x100000>,
         <0xff150000 &lpd_watchdog 0xff150000 0x10000>,
         <0xfd4d0000 &watchdog0 0xfd4d0000 0x10000>,
         <0xffcb0000 &csuwdt_0 0xffcb0000 0x10000>,
         <0x0 &psu_r5_0_atcm 0x0 0x10000>,
         <0x20000 &psu_r5_0_btcm 0x20000 0x10000>,
         <0x0 &psu_r5_tcm_ram_0 0x0 0x40000>,
         <0xf9000000 &gic_r5 0xf9000000 0x10000>;
  #ranges-address-cells = <0x1>;
  #ranges-size-cells = <0x1>;
 };
 cpus_r5_1: cpus-r5@1 {
  compatible = "cpus,cluster";
  address-map = <0xf0000000 &amba 0xf0000000 0x10000000>,
         <0xf9000000 &amba_rpu 0xf9000000 0x3000>,
         <0x0 &zynqmp_reset 0x0 0x0>,
         <0xFFFC0000 &psu_ocm_ram_0_memory 0xFFFC0000 0x40000>,
         <0xff320000 &ipi2 0xff320000 0x10000>,
         <0x100000 &psu_r5_ddr_0_memory 0x100000 0x7FEFFFFF>,
         <0x8f000000 &hier_dpu_DPUCZDX8G 0x8f000000 0x1000000>,
         <0xffa80000 &lpd_dma_chan1 0xffa80000 0x10000>,
         <0xffa90000 &lpd_dma_chan2 0xffa90000 0x10000>,
         <0xffaa0000 &lpd_dma_chan3 0xffaa0000 0x10000>,
         <0xffab0000 &lpd_dma_chan4 0xffab0000 0x10000>,
         <0xffac0000 &lpd_dma_chan5 0xffac0000 0x10000>,
         <0xffad0000 &lpd_dma_chan6 0xffad0000 0x10000>,
         <0xffae0000 &lpd_dma_chan7 0xffae0000 0x10000>,
         <0xffaf0000 &lpd_dma_chan8 0xffaf0000 0x10000>,
         <0xfd360000 &psu_afi_0 0xfd360000 0x10000>,
         <0xfd370000 &psu_afi_1 0xfd370000 0x10000>,
         <0xfd380000 &psu_afi_2 0xfd380000 0x10000>,
         <0xfd390000 &psu_afi_3 0xfd390000 0x10000>,
         <0xfd3a0000 &psu_afi_4 0xfd3a0000 0x10000>,
         <0xfd3b0000 &psu_afi_5 0xfd3b0000 0x10000>,
         <0xff9b0000 &psu_afi_6 0xff9b0000 0x10000>,
         <0xffa50000 &xilinx_ams 0xffa50000 0x10000>,
         <0xfd0b0000 &perf_monitor_ddr 0xfd0b0000 0x10000>,
         <0xffa00000 &perf_monitor_ocm 0xffa00000 0x10000>,
         <0xffa10000 &perf_monitor_lpd 0xffa10000 0x10000>,
         <0xfd490000 &perf_monitor_cci 0xfd490000 0x10000>,
         <0xfd5c0000 &psu_apu 0xfd5c0000 0x10000>,
         <0xff070000 &can1 0xff070000 0x10000>,
         <0xfd6e0000 &psu_cci_gpv 0xfd6e0000 0x10000>,
         <0xfd5e0000 &psu_cci_reg 0xfd5e0000 0x10000>,
         <0xfe800000 &coresight_0 0xfe800000 0x800000>,
         <0xfd1a0000 &psu_crf_apb 0xfd1a0000 0x140000>,
         <0xff5e0000 &psu_crl_apb 0xff5e0000 0x280000>,
         <0xffca0000 &psu_csu_0 0xffca0000 0x10000>,
         <0xffc80000 &csudma_0 0xffc80000 0x20000>,
         <0xff380000 &psu_ctrl_ipi 0xff380000 0x80000>,
         <0xfd080000 &psu_ddr_phy 0xfd080000 0x10000>,
         <0xfd090000 &psu_ddr_qos_ctrl 0xfd090000 0x10000>,
         <0xfd000000 &psu_ddr_xmpu0_cfg 0xfd000000 0x10000>,
         <0xfd010000 &psu_ddr_xmpu1_cfg 0xfd010000 0x10000>,
         <0xfd020000 &psu_ddr_xmpu2_cfg 0xfd020000 0x10000>,
         <0xfd030000 &psu_ddr_xmpu3_cfg 0xfd030000 0x10000>,
         <0xfd040000 &psu_ddr_xmpu4_cfg 0xfd040000 0x10000>,
         <0xfd050000 &psu_ddr_xmpu5_cfg 0xfd050000 0x10000>,
         <0xfd070000 &mc 0xfd070000 0x1000>,
         <0xfd4a0000 &zynqmp_dpsub 0xfd4a0000 0x10000>,
         <0xfd4c0000 &zynqmp_dpdma 0xfd4c0000 0x10000>,
         <0xffcc0000 &psu_efuse 0xffcc0000 0x10000>,
         <0xff0e0000 &gem3 0xff0e0000 0x10000>,
         <0xfd700000 &psu_fpd_gpv 0xfd700000 0x100000>,
         <0xfd610000 &psu_fpd_slcr 0xfd610000 0x80000>,
         <0xfd690000 &psu_fpd_slcr_secure 0xfd690000 0x40000>,
         <0xfd5d0000 &psu_fpd_xmpu_cfg 0xfd5d0000 0x10000>,
         <0xfd4f0000 &psu_fpd_xmpu_sink 0xfd4f0000 0x10000>,
         <0xfd500000 &fpd_dma_chan1 0xfd500000 0x10000>,
         <0xfd510000 &fpd_dma_chan2 0xfd510000 0x10000>,
         <0xfd520000 &fpd_dma_chan3 0xfd520000 0x10000>,
         <0xfd530000 &fpd_dma_chan4 0xfd530000 0x10000>,
         <0xfd540000 &fpd_dma_chan5 0xfd540000 0x10000>,
         <0xfd550000 &fpd_dma_chan6 0xfd550000 0x10000>,
         <0xfd560000 &fpd_dma_chan7 0xfd560000 0x10000>,
         <0xfd570000 &fpd_dma_chan8 0xfd570000 0x10000>,
         <0xff0a0000 &gpio 0xff0a0000 0x10000>,
         <0xfd4b0000 &gpu 0xfd4b0000 0x10000>,
         <0xff020000 &i2c0 0xff020000 0x10000>,
         <0xff030000 &i2c1 0xff030000 0x10000>,
         <0xff250000 &psu_iou_scntr 0xff250000 0x10000>,
         <0xff260000 &psu_iou_scntrs 0xff260000 0x10000>,
         <0xff240000 &psu_iousecure_slcr 0xff240000 0x10000>,
         <0xff180000 &psu_iouslcr_0 0xff180000 0xc0000>,
         <0xff410000 &psu_lpd_slcr 0xff410000 0xa0000>,
         <0xff4b0000 &psu_lpd_slcr_secure 0xff4b0000 0x30000>,
         <0xff980000 &lpd_xppu 0xff980000 0x10000>,
         <0xff9c0000 &psu_lpd_xppu_sink 0xff9c0000 0x10000>,
         <0xffcf0000 &psu_mbistjtag 0xffcf0000 0x10000>,
         <0xff990000 &psu_message_buffers 0xff990000 0x10000>,
         <0xff960000 &ocm 0xff960000 0x10000>,
         <0xffa70000 &psu_ocm_xmpu_cfg 0xffa70000 0x10000>,
         <0xffd80000 &psu_pmu_global_0 0xffd80000 0x40000>,
         <0xff0f0000 &qspi 0xff0f0000 0x10000>,
         <0xc0000000 &psu_qspi_linear_0_memory 0xc0000000 0x20000000>,
         <0xff9a0000 &psu_rpu 0xff9a0000 0x10000>,
         <0xffce0000 &psu_rsa 0xffce0000 0x10000>,
         <0xffa60000 &rtc 0xffa60000 0x10000>,
         <0xfd0c0000 &sata 0xfd0c0000 0x10000>,
         <0xff170000 &sdhci1 0xff170000 0x10000>,
         <0xfd400000 &psgtr 0xfd400000 0x80000>,
         <0xfd3d0000 &psu_siou 0xfd3d0000 0x10000>,
         <0xfd800000 &smmu 0xfd800000 0x800000>,
         <0xfd5f0000 &psu_smmu_reg 0xfd5f0000 0x10000>,
         <0xff110000 &ttc0 0xff110000 0x10000>,
         <0xff120000 &ttc1 0xff120000 0x10000>,
         <0xff130000 &ttc2 0xff130000 0x10000>,
         <0xff140000 &ttc3 0xff140000 0x10000>,
         <0xff000000 &uart0 0xff000000 0x10000>,
         <0xff010000 &uart1 0xff010000 0x10000>,
         <0xff9d0000 &usb0 0xff9d0000 0x10000>,
         <0xfe200000 &dwc3_0 0xfe200000 0x100000>,
         <0xff150000 &lpd_watchdog 0xff150000 0x10000>,
         <0xfd4d0000 &watchdog0 0xfd4d0000 0x10000>,
         <0xffcb0000 &csuwdt_0 0xffcb0000 0x10000>,
         <0xf9000000 &gic_r5 0xf9000000 0x10000>,
         <0x0 &psu_r5_1_atcm 0x0 0x10000>,
         <0x20000 &psu_r5_1_btcm 0x20000 0x10000>;
  #ranges-address-cells = <0x1>;
  #ranges-size-cells = <0x1>;
 };
 cpus_microblaze_0: cpus_microblaze@0 {
  compatible = "cpus,cluster";
  address-map = <0xf0000000 &amba 0xf0000000 0x10000000>,
         <0x0 &zynqmp_reset 0x0 0x0>,
         <0xFFFC0000 &psu_ocm_ram_0_memory 0xFFFC0000 0x40000>,
         <0xff330000 &ipi3 0xff330000 0x1000>,
         <0xff331000 &ipi4 0xff331000 0x1000>,
         <0xff332000 &ipi5 0xff332000 0x1000>,
         <0xff333000 &ipi6 0xff333000 0x1000>,
         <0x0 &psu_ddr_0_memory 0x0 0x7FF00000>,
         <0x7FF00000 &psu_ddr_0_memory 0x7FF00000 0x100000>,
         <0x8f000000 &hier_dpu_DPUCZDX8G 0x8f000000 0x1000000>,
         <0xffa80000 &lpd_dma_chan1 0xffa80000 0x10000>,
         <0xffa90000 &lpd_dma_chan2 0xffa90000 0x10000>,
         <0xffaa0000 &lpd_dma_chan3 0xffaa0000 0x10000>,
         <0xffab0000 &lpd_dma_chan4 0xffab0000 0x10000>,
         <0xffac0000 &lpd_dma_chan5 0xffac0000 0x10000>,
         <0xffad0000 &lpd_dma_chan6 0xffad0000 0x10000>,
         <0xffae0000 &lpd_dma_chan7 0xffae0000 0x10000>,
         <0xffaf0000 &lpd_dma_chan8 0xffaf0000 0x10000>,
         <0xfd360000 &psu_afi_0 0xfd360000 0x10000>,
         <0xfd370000 &psu_afi_1 0xfd370000 0x10000>,
         <0xfd380000 &psu_afi_2 0xfd380000 0x10000>,
         <0xfd390000 &psu_afi_3 0xfd390000 0x10000>,
         <0xfd3a0000 &psu_afi_4 0xfd3a0000 0x10000>,
         <0xfd3b0000 &psu_afi_5 0xfd3b0000 0x10000>,
         <0xff9b0000 &psu_afi_6 0xff9b0000 0x10000>,
         <0xffa50000 &xilinx_ams 0xffa50000 0x10000>,
         <0xfd0b0000 &perf_monitor_ddr 0xfd0b0000 0x10000>,
         <0xffa00000 &perf_monitor_ocm 0xffa00000 0x10000>,
         <0xffa10000 &perf_monitor_lpd 0xffa10000 0x10000>,
         <0xfd490000 &perf_monitor_cci 0xfd490000 0x10000>,
         <0xfd5c0000 &psu_apu 0xfd5c0000 0x10000>,
         <0xff070000 &can1 0xff070000 0x10000>,
         <0xfd6e0000 &psu_cci_gpv 0xfd6e0000 0x10000>,
         <0xfd5e0000 &psu_cci_reg 0xfd5e0000 0x10000>,
         <0xfd1a0000 &psu_crf_apb 0xfd1a0000 0x140000>,
         <0xff5e0000 &psu_crl_apb 0xff5e0000 0x280000>,
         <0xffca0000 &psu_csu_0 0xffca0000 0x10000>,
         <0xffc80000 &csudma_0 0xffc80000 0x20000>,
         <0xff380000 &psu_ctrl_ipi 0xff380000 0x80000>,
         <0xfd080000 &psu_ddr_phy 0xfd080000 0x10000>,
         <0xfd090000 &psu_ddr_qos_ctrl 0xfd090000 0x10000>,
         <0xfd000000 &psu_ddr_xmpu0_cfg 0xfd000000 0x10000>,
         <0xfd010000 &psu_ddr_xmpu1_cfg 0xfd010000 0x10000>,
         <0xfd020000 &psu_ddr_xmpu2_cfg 0xfd020000 0x10000>,
         <0xfd030000 &psu_ddr_xmpu3_cfg 0xfd030000 0x10000>,
         <0xfd040000 &psu_ddr_xmpu4_cfg 0xfd040000 0x10000>,
         <0xfd050000 &psu_ddr_xmpu5_cfg 0xfd050000 0x10000>,
         <0xfd070000 &mc 0xfd070000 0x1000>,
         <0xfd4a0000 &zynqmp_dpsub 0xfd4a0000 0x10000>,
         <0xfd4c0000 &zynqmp_dpdma 0xfd4c0000 0x10000>,
         <0xffcc0000 &psu_efuse 0xffcc0000 0x10000>,
         <0xff0e0000 &gem3 0xff0e0000 0x10000>,
         <0xfd700000 &psu_fpd_gpv 0xfd700000 0x100000>,
         <0xfd610000 &psu_fpd_slcr 0xfd610000 0x80000>,
         <0xfd690000 &psu_fpd_slcr_secure 0xfd690000 0x40000>,
         <0xfd5d0000 &psu_fpd_xmpu_cfg 0xfd5d0000 0x10000>,
         <0xfd4f0000 &psu_fpd_xmpu_sink 0xfd4f0000 0x10000>,
         <0xfd500000 &fpd_dma_chan1 0xfd500000 0x10000>,
         <0xfd510000 &fpd_dma_chan2 0xfd510000 0x10000>,
         <0xfd520000 &fpd_dma_chan3 0xfd520000 0x10000>,
         <0xfd530000 &fpd_dma_chan4 0xfd530000 0x10000>,
         <0xfd540000 &fpd_dma_chan5 0xfd540000 0x10000>,
         <0xfd550000 &fpd_dma_chan6 0xfd550000 0x10000>,
         <0xfd560000 &fpd_dma_chan7 0xfd560000 0x10000>,
         <0xfd570000 &fpd_dma_chan8 0xfd570000 0x10000>,
         <0xff0a0000 &gpio 0xff0a0000 0x10000>,
         <0xfd4b0000 &gpu 0xfd4b0000 0x10000>,
         <0xff020000 &i2c0 0xff020000 0x10000>,
         <0xff030000 &i2c1 0xff030000 0x10000>,
         <0xff250000 &psu_iou_scntr 0xff250000 0x10000>,
         <0xff260000 &psu_iou_scntrs 0xff260000 0x10000>,
         <0xff240000 &psu_iousecure_slcr 0xff240000 0x10000>,
         <0xff180000 &psu_iouslcr_0 0xff180000 0xc0000>,
         <0xff410000 &psu_lpd_slcr 0xff410000 0xa0000>,
         <0xff4b0000 &psu_lpd_slcr_secure 0xff4b0000 0x30000>,
         <0xff980000 &lpd_xppu 0xff980000 0x10000>,
         <0xff9c0000 &psu_lpd_xppu_sink 0xff9c0000 0x10000>,
         <0xffcf0000 &psu_mbistjtag 0xffcf0000 0x10000>,
         <0xff990000 &psu_message_buffers 0xff990000 0x10000>,
         <0xff960000 &ocm 0xff960000 0x10000>,
         <0xffa70000 &psu_ocm_xmpu_cfg 0xffa70000 0x10000>,
         <0xffd80000 &psu_pmu_global_0 0xffd80000 0x40000>,
         <0xff0f0000 &qspi 0xff0f0000 0x10000>,
         <0xc0000000 &psu_qspi_linear_0_memory 0xc0000000 0x20000000>,
         <0xffe00000 &psu_r5_0_atcm_global 0xffe00000 0x10000>,
         <0xffe20000 &psu_r5_0_btcm_global 0xffe20000 0x10000>,
         <0xffe90000 &psu_r5_1_atcm_global 0xffe90000 0x10000>,
         <0xffeb0000 &psu_r5_1_btcm_global 0xffeb0000 0x10000>,
         <0xffe00000 &psu_r5_tcm_ram_global 0xffe00000 0x40000>,
         <0xff9a0000 &psu_rpu 0xff9a0000 0x10000>,
         <0xffce0000 &psu_rsa 0xffce0000 0x10000>,
         <0xffa60000 &rtc 0xffa60000 0x10000>,
         <0xfd0c0000 &sata 0xfd0c0000 0x10000>,
         <0xff170000 &sdhci1 0xff170000 0x10000>,
         <0xfd400000 &psgtr 0xfd400000 0x80000>,
         <0xfd3d0000 &psu_siou 0xfd3d0000 0x10000>,
         <0xfd800000 &smmu 0xfd800000 0x800000>,
         <0xfd5f0000 &psu_smmu_reg 0xfd5f0000 0x10000>,
         <0xff110000 &ttc0 0xff110000 0x10000>,
         <0xff120000 &ttc1 0xff120000 0x10000>,
         <0xff130000 &ttc2 0xff130000 0x10000>,
         <0xff140000 &ttc3 0xff140000 0x10000>,
         <0xff000000 &uart0 0xff000000 0x10000>,
         <0xff010000 &uart1 0xff010000 0x10000>,
         <0xff9d0000 &usb0 0xff9d0000 0x10000>,
         <0xfe200000 &dwc3_0 0xfe200000 0x100000>,
         <0xff150000 &lpd_watchdog 0xff150000 0x10000>,
         <0xfd4d0000 &watchdog0 0xfd4d0000 0x10000>,
         <0xffcb0000 &csuwdt_0 0xffcb0000 0x10000>,
         <0xffcd0000 &psu_bbram_0 0xffcd0000 0x10000>,
         <0xffd40000 &psu_pmu_iomodule 0xffd40000 0x20000>,
         <0xffdc0000 &psu_pmu_ram 0xffdc0000 0x20000>;
  #ranges-address-cells = <0x1>;
  #ranges-size-cells = <0x1>;
 };
};
# 1 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zcu102-rev1.0.dtsi" 1
# 11 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zcu102-rev1.0.dtsi"
# 1 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zcu102-revb.dtsi" 1
# 11 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zcu102-revb.dtsi"
# 1 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zcu102-reva.dtsi" 1
# 12 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zcu102-reva.dtsi"
# 1 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/include/dt-bindings/input/input.h" 1
# 12 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/include/dt-bindings/input/input.h"
# 1 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/include/dt-bindings/input/linux-event-codes.h" 1
# 13 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/include/dt-bindings/input/input.h" 2
# 13 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zcu102-reva.dtsi" 2

# 1 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/include/dt-bindings/pinctrl/pinctrl-zynqmp.h" 1
# 15 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zcu102-reva.dtsi" 2
# 1 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/include/dt-bindings/phy/phy.h" 1
# 16 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zcu102-reva.dtsi" 2

/ {
 model = "ZynqMP ZCU102 RevA";
 compatible = "xlnx,zynqmp-zcu102-revA", "xlnx,zynqmp-zcu102", "xlnx,zynqmp";

 aliases {
  ethernet0 = &gem3;
  i2c0 = &i2c0;
  i2c1 = &i2c1;
  mmc0 = &sdhci1;
  nvmem0 = &eeprom;
  rtc0 = &rtc;
  serial0 = &uart0;
  serial1 = &uart1;
  serial2 = &dcc;
  spi0 = &qspi;
  usb0 = &usb0;
 };

 gpio-keys {
  compatible = "gpio-keys";
  autorepeat;
  switch-19 {
   label = "sw19";
   gpios = <&gpio 22 0>;
   linux,code = <108>;
   wakeup-source;
   autorepeat;
  };
 };

 leds {
  compatible = "gpio-leds";
  heartbeat-led {
   label = "heartbeat";
   gpios = <&gpio 23 0>;
   linux,default-trigger = "heartbeat";
  };
 };

 ina226-u76 {
  compatible = "iio-hwmon";
  io-channels = <&u76 0>, <&u76 1>, <&u76 2>, <&u76 3>;
 };
 ina226-u77 {
  compatible = "iio-hwmon";
  io-channels = <&u77 0>, <&u77 1>, <&u77 2>, <&u77 3>;
 };
 ina226-u78 {
  compatible = "iio-hwmon";
  io-channels = <&u78 0>, <&u78 1>, <&u78 2>, <&u78 3>;
 };
 ina226-u87 {
  compatible = "iio-hwmon";
  io-channels = <&u87 0>, <&u87 1>, <&u87 2>, <&u87 3>;
 };
 ina226-u85 {
  compatible = "iio-hwmon";
  io-channels = <&u85 0>, <&u85 1>, <&u85 2>, <&u85 3>;
 };
 ina226-u86 {
  compatible = "iio-hwmon";
  io-channels = <&u86 0>, <&u86 1>, <&u86 2>, <&u86 3>;
 };
 ina226-u93 {
  compatible = "iio-hwmon";
  io-channels = <&u93 0>, <&u93 1>, <&u93 2>, <&u93 3>;
 };
 ina226-u88 {
  compatible = "iio-hwmon";
  io-channels = <&u88 0>, <&u88 1>, <&u88 2>, <&u88 3>;
 };
 ina226-u15 {
  compatible = "iio-hwmon";
  io-channels = <&u15 0>, <&u15 1>, <&u15 2>, <&u15 3>;
 };
 ina226-u92 {
  compatible = "iio-hwmon";
  io-channels = <&u92 0>, <&u92 1>, <&u92 2>, <&u92 3>;
 };
 ina226-u79 {
  compatible = "iio-hwmon";
  io-channels = <&u79 0>, <&u79 1>, <&u79 2>, <&u79 3>;
 };
 ina226-u81 {
  compatible = "iio-hwmon";
  io-channels = <&u81 0>, <&u81 1>, <&u81 2>, <&u81 3>;
 };
 ina226-u80 {
  compatible = "iio-hwmon";
  io-channels = <&u80 0>, <&u80 1>, <&u80 2>, <&u80 3>;
 };
 ina226-u84 {
  compatible = "iio-hwmon";
  io-channels = <&u84 0>, <&u84 1>, <&u84 2>, <&u84 3>;
 };
 ina226-u16 {
  compatible = "iio-hwmon";
  io-channels = <&u16 0>, <&u16 1>, <&u16 2>, <&u16 3>;
 };
 ina226-u65 {
  compatible = "iio-hwmon";
  io-channels = <&u65 0>, <&u65 1>, <&u65 2>, <&u65 3>;
 };
 ina226-u74 {
  compatible = "iio-hwmon";
  io-channels = <&u74 0>, <&u74 1>, <&u74 2>, <&u74 3>;
 };
 ina226-u75 {
  compatible = "iio-hwmon";
  io-channels = <&u75 0>, <&u75 1>, <&u75 2>, <&u75 3>;
 };


 ref48: ref48M {
  compatible = "fixed-clock";
  #clock-cells = <0>;
  clock-frequency = <48000000>;
 };

 refhdmi: refhdmi {
  compatible = "fixed-clock";
  #clock-cells = <0>;
  clock-frequency = <114285000>;
 };
};

&can1 {
 pinctrl-names = "default";
 pinctrl-0 = <&pinctrl_can1_default>;
};


&gem3 {
 phy-handle = <&phy0>;
 phy-mode = "rgmii-id";
 pinctrl-names = "default";
 pinctrl-0 = <&pinctrl_gem3_default>;
 mdio: mdio {
  #address-cells = <1>;
  #size-cells = <0>;
  phy0: ethernet-phy@21 {
   #phy-cells = <1>;
   compatible = "ethernet-phy-id2000.a231";
   reg = <21>;
   ti,rx-internal-delay = <0x8>;
   ti,tx-internal-delay = <0xa>;
   ti,fifo-depth = <0x1>;
   ti,dp83867-rxctrl-strap-quirk;
   reset-gpios = <&tca6416_u97 6 1>;
  };
 };
};

&gpio {
 pinctrl-names = "default";
 pinctrl-0 = <&pinctrl_gpio_default>;
};


&i2c0 {
 clock-frequency = <400000>;
 pinctrl-names = "default", "gpio";
 pinctrl-0 = <&pinctrl_i2c0_default>;
 pinctrl-1 = <&pinctrl_i2c0_gpio>;
 scl-gpios = <&gpio 14 (0 | (2 | 4))>;
 sda-gpios = <&gpio 15 (0 | (2 | 4))>;

 tca6416_u97: gpio@20 {
  compatible = "ti,tca6416";
  reg = <0x20>;
  gpio-controller;
  #gpio-cells = <2>;
  gpio-line-names = "PS_GTR_LAN_SEL0", "PS_GTR_LAN_SEL1", "PS_GTR_LAN_SEL2", "PS_GTR_LAN_SEL3",
    "PCI_CLK_DIR_SEL", "IIC_MUX_RESET_B", "GEM3_EXP_RESET_B",
    "", "", "", "", "", "", "", "", "";
  gtr-sel0-hog {
   gpio-hog;
   gpios = <0 0>;
   output-low;
   line-name = "sel0";
  };
  gtr-sel1-hog {
   gpio-hog;
   gpios = <1 0>;
   output-high;
   line-name = "sel1";
  };
  gtr-sel2-hog {
   gpio-hog;
   gpios = <2 0>;
   output-high;
   line-name = "sel2";
  };
  gtr-sel3-hog {
   gpio-hog;
   gpios = <3 0>;
   output-high;
   line-name = "sel3";
  };
 };

 tca6416_u61: gpio@21 {
  compatible = "ti,tca6416";
  reg = <0x21>;
  gpio-controller;
  #gpio-cells = <2>;
  gpio-line-names = "VCCPSPLL_EN", "MGTRAVCC_EN", "MGTRAVTT_EN", "VCCPSDDRPLL_EN", "MIO26_PMU_INPUT_LS",
    "PL_PMBUS_ALERT", "PS_PMBUS_ALERT", "MAXIM_PMBUS_ALERT", "PL_DDR4_VTERM_EN",
    "PL_DDR4_VPP_2V5_EN", "PS_DIMM_VDDQ_TO_PSVCCO_ON", "PS_DIMM_SUSPEND_EN",
    "PS_DDR4_VTERM_EN", "PS_DDR4_VPP_2V5_EN", "", "";
 };

 i2c-mux@75 {
  compatible = "nxp,pca9544";
  #address-cells = <1>;
  #size-cells = <0>;
  reg = <0x75>;
  i2c@0 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <0>;

   u76: ina226@40 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-u76";
    reg = <0x40>;
    shunt-resistor = <5000>;
   };
   u77: ina226@41 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-u77";
    reg = <0x41>;
    shunt-resistor = <5000>;
   };
   u78: ina226@42 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-u78";
    reg = <0x42>;
    shunt-resistor = <5000>;
   };
   u87: ina226@43 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-u87";
    reg = <0x43>;
    shunt-resistor = <5000>;
   };
   u85: ina226@44 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-u85";
    reg = <0x44>;
    shunt-resistor = <5000>;
   };
   u86: ina226@45 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-u86";
    reg = <0x45>;
    shunt-resistor = <5000>;
   };
   u93: ina226@46 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-u93";
    reg = <0x46>;
    shunt-resistor = <5000>;
   };
   u88: ina226@47 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-u88";
    reg = <0x47>;
    shunt-resistor = <5000>;
   };
   u15: ina226@4a {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-u15";
    reg = <0x4a>;
    shunt-resistor = <5000>;
   };
   u92: ina226@4b {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-u92";
    reg = <0x4b>;
    shunt-resistor = <5000>;
   };
  };
  i2c@1 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <1>;

   u79: ina226@40 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-u79";
    reg = <0x40>;
    shunt-resistor = <2000>;
   };
   u81: ina226@41 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-u81";
    reg = <0x41>;
    shunt-resistor = <5000>;
   };
   u80: ina226@42 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-u80";
    reg = <0x42>;
    shunt-resistor = <5000>;
   };
   u84: ina226@43 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-u84";
    reg = <0x43>;
    shunt-resistor = <5000>;
   };
   u16: ina226@44 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-u16";
    reg = <0x44>;
    shunt-resistor = <5000>;
   };
   u65: ina226@45 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-u65";
    reg = <0x45>;
    shunt-resistor = <5000>;
   };
   u74: ina226@46 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-u74";
    reg = <0x46>;
    shunt-resistor = <5000>;
   };
   u75: ina226@47 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-u75";
    reg = <0x47>;
    shunt-resistor = <5000>;
   };
  };
  i2c@2 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <2>;

   max15301@a {
    compatible = "maxim,max15301";
    reg = <0xa>;
   };
   max15303@b {
    compatible = "maxim,max15303";
    reg = <0xb>;
   };
   max15303@10 {
    compatible = "maxim,max15303";
    reg = <0x10>;
   };
   max15301@13 {
    compatible = "maxim,max15301";
    reg = <0x13>;
   };
   max15303@14 {
    compatible = "maxim,max15303";
    reg = <0x14>;
   };
   max15303@15 {
    compatible = "maxim,max15303";
    reg = <0x15>;
   };
   max15303@16 {
    compatible = "maxim,max15303";
    reg = <0x16>;
   };
   max15303@17 {
    compatible = "maxim,max15303";
    reg = <0x17>;
   };
   max15301@18 {
    compatible = "maxim,max15301";
    reg = <0x18>;
   };
   max15303@1a {
    compatible = "maxim,max15303";
    reg = <0x1a>;
   };
   max15303@1d {
    compatible = "maxim,max15303";
    reg = <0x1d>;
   };
   max15303@20 {
    compatible = "maxim,max15303";
    status = "disabled";
    reg = <0x20>;
   };
   max20751@72 {
    compatible = "maxim,max20751";
    reg = <0x72>;
   };
   max20751@73 {
    compatible = "maxim,max20751";
    reg = <0x73>;
   };
  };

 };
};

&i2c1 {
 clock-frequency = <400000>;
 pinctrl-names = "default", "gpio";
 pinctrl-0 = <&pinctrl_i2c1_default>;
 pinctrl-1 = <&pinctrl_i2c1_gpio>;
 scl-gpios = <&gpio 16 (0 | (2 | 4))>;
 sda-gpios = <&gpio 17 (0 | (2 | 4))>;


 i2c-mux@74 {
  compatible = "nxp,pca9548";
  #address-cells = <1>;
  #size-cells = <0>;
  reg = <0x74>;
  i2c@0 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <0>;
# 465 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zcu102-reva.dtsi"
   eeprom: eeprom@54 {
    compatible = "atmel,24c08";
    reg = <0x54>;
   };
  };
  i2c@1 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <1>;
   si5341: clock-generator@36 {
    compatible = "silabs,si5341";
    reg = <0x36>;
    #clock-cells = <2>;
    #address-cells = <1>;
    #size-cells = <0>;
    clocks = <&ref48>;
    clock-names = "xtal";
    clock-output-names = "si5341";

    si5341_0: out@0 {

     reg = <0>;
     always-on;
    };
    si5341_2: out@2 {

     reg = <2>;
     always-on;
    };
    si5341_3: out@3 {

     reg = <3>;
     always-on;
    };
    si5341_4: out@4 {

     reg = <4>;
     always-on;
    };
    si5341_5: out@5 {

     reg = <5>;
     always-on;
    };
    si5341_6: out@6 {

     reg = <6>;
     always-on;
    };
    si5341_7: out@7 {

     reg = <7>;
     always-on;
    };
    si5341_9: out@9 {

     reg = <9>;
     always-on;
    };
   };
  };
  i2c@2 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <2>;
   si570_1: clock-generator@5d {
    #clock-cells = <0>;
    compatible = "silabs,si570";
    reg = <0x5d>;
    temperature-stability = <50>;
    factory-fout = <300000000>;
    clock-frequency = <300000000>;
    clock-output-names = "si570_user";
   };
  };
  i2c@3 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <3>;
   si570_2: clock-generator@5d {
    #clock-cells = <0>;
    compatible = "silabs,si570";
    reg = <0x5d>;
    temperature-stability = <50>;
    factory-fout = <156250000>;
    clock-frequency = <156250000>;
    clock-output-names = "si570_mgt";
   };
  };
  i2c@4 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <4>;
   si5328: clock-generator@69 {
    compatible = "silabs,si5328";
    reg = <0x69>;





    #address-cells = <1>;
    #size-cells = <0>;
    #clock-cells = <1>;
    clocks = <&refhdmi>;
    clock-names = "xtal";
    clock-output-names = "si5328";

    si5328_clk: clk0@0 {
     reg = <0>;
     clock-frequency = <27000000>;
    };
   };
  };

 };

 i2c-mux@75 {
  compatible = "nxp,pca9548";
  #address-cells = <1>;
  #size-cells = <0>;
  reg = <0x75>;

  i2c@0 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <0>;

  };
  i2c@1 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <1>;

  };
  i2c@2 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <2>;

  };
  i2c@3 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <3>;

  };
  i2c@4 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <4>;

  };
  i2c@5 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <5>;

  };
  i2c@6 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <6>;

  };
  i2c@7 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <7>;

  };
 };
};

&pinctrl0 {
 status = "okay";
 pinctrl_i2c0_default: i2c0-default {
  mux {
   groups = "i2c0_3_grp";
   function = "i2c0";
  };

  conf {
   groups = "i2c0_3_grp";
   bias-pull-up;
   slew-rate = <1>;
   power-source = <1>;
  };
 };

 pinctrl_i2c0_gpio: i2c0-gpio-grp {
  mux {
   groups = "gpio0_14_grp", "gpio0_15_grp";
   function = "gpio0";
  };

  conf {
   groups = "gpio0_14_grp", "gpio0_15_grp";
   slew-rate = <1>;
   power-source = <1>;
  };
 };

 pinctrl_i2c1_default: i2c1-default {
  mux {
   groups = "i2c1_4_grp";
   function = "i2c1";
  };

  conf {
   groups = "i2c1_4_grp";
   bias-pull-up;
   slew-rate = <1>;
   power-source = <1>;
  };
 };

 pinctrl_i2c1_gpio: i2c1-gpio-grp {
  mux {
   groups = "gpio0_16_grp", "gpio0_17_grp";
   function = "gpio0";
  };

  conf {
   groups = "gpio0_16_grp", "gpio0_17_grp";
   slew-rate = <1>;
   power-source = <1>;
  };
 };

 pinctrl_uart0_default: uart0-default {
  mux {
   groups = "uart0_4_grp";
   function = "uart0";
  };

  conf {
   groups = "uart0_4_grp";
   slew-rate = <1>;
   power-source = <1>;
  };

  conf-rx {
   pins = "MIO18";
   bias-high-impedance;
  };

  conf-tx {
   pins = "MIO19";
   bias-disable;
  };
 };

 pinctrl_uart1_default: uart1-default {
  mux {
   groups = "uart1_5_grp";
   function = "uart1";
  };

  conf {
   groups = "uart1_5_grp";
   slew-rate = <1>;
   power-source = <1>;
  };

  conf-rx {
   pins = "MIO21";
   bias-high-impedance;
  };

  conf-tx {
   pins = "MIO20";
   bias-disable;
  };
 };

 pinctrl_usb0_default: usb0-default {
  mux {
   groups = "usb0_0_grp";
   function = "usb0";
  };

  conf {
   groups = "usb0_0_grp";
   power-source = <1>;
  };

  conf-rx {
   pins = "MIO52", "MIO53", "MIO55";
   bias-high-impedance;
   drive-strength = <12>;
   slew-rate = <0>;
  };

  conf-tx {
   pins = "MIO54", "MIO56", "MIO57", "MIO58", "MIO59",
          "MIO60", "MIO61", "MIO62", "MIO63";
   bias-disable;
   drive-strength = <4>;
   slew-rate = <1>;
  };
 };

 pinctrl_gem3_default: gem3-default {
  mux {
   function = "ethernet3";
   groups = "ethernet3_0_grp";
  };

  conf {
   groups = "ethernet3_0_grp";
   slew-rate = <1>;
   power-source = <1>;
  };

  conf-rx {
   pins = "MIO70", "MIO71", "MIO72", "MIO73", "MIO74",
         "MIO75";
   bias-high-impedance;
   low-power-disable;
  };

  conf-tx {
   pins = "MIO64", "MIO65", "MIO66", "MIO67", "MIO68",
         "MIO69";
   bias-disable;
   low-power-enable;
  };

  mux-mdio {
   function = "mdio3";
   groups = "mdio3_0_grp";
  };

  conf-mdio {
   groups = "mdio3_0_grp";
   slew-rate = <1>;
   power-source = <1>;
   bias-disable;
  };
 };

 pinctrl_can1_default: can1-default {
  mux {
   function = "can1";
   groups = "can1_6_grp";
  };

  conf {
   groups = "can1_6_grp";
   slew-rate = <1>;
   power-source = <1>;
  };

  conf-rx {
   pins = "MIO25";
   bias-high-impedance;
  };

  conf-tx {
   pins = "MIO24";
   bias-disable;
  };
 };

 pinctrl_sdhci1_default: sdhci1-default {
  mux {
   groups = "sdio1_0_grp";
   function = "sdio1";
  };

  conf {
   groups = "sdio1_0_grp";
   slew-rate = <1>;
   power-source = <1>;
   bias-disable;
  };

  mux-cd {
   groups = "sdio1_cd_0_grp";
   function = "sdio1_cd";
  };

  conf-cd {
   groups = "sdio1_cd_0_grp";
   bias-high-impedance;
   bias-pull-up;
   slew-rate = <1>;
   power-source = <1>;
  };

  mux-wp {
   groups = "sdio1_wp_0_grp";
   function = "sdio1_wp";
  };

  conf-wp {
   groups = "sdio1_wp_0_grp";
   bias-high-impedance;
   bias-pull-up;
   slew-rate = <1>;
   power-source = <1>;
  };
 };

 pinctrl_gpio_default: gpio-default {
  mux-sw {
   function = "gpio0";
   groups = "gpio0_22_grp", "gpio0_23_grp";
  };

  conf-sw {
   groups = "gpio0_22_grp", "gpio0_23_grp";
   slew-rate = <1>;
   power-source = <1>;
  };

  mux-msp {
   function = "gpio0";
   groups = "gpio0_13_grp", "gpio0_38_grp";
  };

  conf-msp {
   groups = "gpio0_13_grp", "gpio0_38_grp";
   slew-rate = <1>;
   power-source = <1>;
  };

  conf-pull-up {
   pins = "MIO22", "MIO23";
   bias-pull-up;
  };

  conf-pull-none {
   pins = "MIO13", "MIO38";
   bias-disable;
  };
 };
};


&psgtr {
 status = "okay";

 clocks = <&si5341 0 5>, <&si5341 0 3>, <&si5341 0 2>, <&si5341 0 0>;
 clock-names = "ref0", "ref1", "ref2", "ref3";
};

&qspi {
 num-cs = <2>;
 flash@0 {
  compatible = "m25p80", "jedec,spi-nor";
  #address-cells = <1>;
  #size-cells = <1>;
  reg = <0>, <1>;
  parallel-memories = /bits/ 64 <0x4000000 0x4000000>;
  spi-tx-bus-width = <4>;
  spi-rx-bus-width = <4>;
  spi-max-frequency = <108000000>;
  partition@0 {
   label = "qspi-fsbl-uboot";
   reg = <0x0 0x100000>;
  };
  partition@100000 {
   label = "qspi-linux";
   reg = <0x100000 0x500000>;
  };
  partition@600000 {
   label = "qspi-device-tree";
   reg = <0x600000 0x20000>;
  };
  partition@620000 {
   label = "qspi-rootfs";
   reg = <0x620000 0x5E0000>;
  };
 };
};


&sata {

 ceva,p0-cominit-params = /bits/ 8 <0x18 0x40 0x18 0x28>;
 ceva,p0-comwake-params = /bits/ 8 <0x06 0x14 0x08 0x0E>;
 ceva,p0-burst-params = /bits/ 8 <0x13 0x08 0x4A 0x06>;
 ceva,p0-retry-params = /bits/ 16 <0x96A4 0x3FFC>;
 ceva,p1-cominit-params = /bits/ 8 <0x18 0x40 0x18 0x28>;
 ceva,p1-comwake-params = /bits/ 8 <0x06 0x14 0x08 0x0E>;
 ceva,p1-burst-params = /bits/ 8 <0x13 0x08 0x4A 0x06>;
 ceva,p1-retry-params = /bits/ 16 <0x96A4 0x3FFC>;
 phy-names = "sata-phy";
 phys = <&psgtr 3 1 1 1>;
};


&sdhci1 {




 no-1-8-v;
 pinctrl-names = "default";
 pinctrl-0 = <&pinctrl_sdhci1_default>;
 xlnx,mio-bank = <1>;
};

&uart0 {
 pinctrl-names = "default";
 pinctrl-0 = <&pinctrl_uart0_default>;
};

&uart1 {
 pinctrl-names = "default";
 pinctrl-0 = <&pinctrl_uart1_default>;
};


&usb0 {
 pinctrl-names = "default";
 pinctrl-0 = <&pinctrl_usb0_default>;
 phy-names = "usb3-phy";
 phys = <&psgtr 2 4 0 2>;
};

&dwc3_0 {
 dr_mode = "host";
 snps,usb3_lpm_capable;
 maximum-speed = "super-speed";
};


&zynqmp_dpsub {
 phy-names = "dp-phy0";
 phys = <&psgtr 1 6 0 3>;
};
# 12 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zcu102-revb.dtsi" 2

/ {
 model = "ZynqMP ZCU102 RevB";
 compatible = "xlnx,zynqmp-zcu102-revB", "xlnx,zynqmp-zcu102", "xlnx,zynqmp";
};

&gem3 {
 phy-handle = <&phyc>;
 mdio: mdio {
  phyc: ethernet-phy@c {
   #phy-cells = <0x1>;
   compatible = "ethernet-phy-id2000.a231";
   reg = <0xc>;
   ti,rx-internal-delay = <0x8>;
   ti,tx-internal-delay = <0xa>;
   ti,fifo-depth = <0x1>;
   ti,dp83867-rxctrl-strap-quirk;
   reset-gpios = <&tca6416_u97 6 1>;
  };

  /delete-node/ ethernet-phy@21;
 };
};


&i2c0 {
 i2c-mux@75 {
  i2c@2 {
   max15303@1b {
    compatible = "maxim,max15303";
    reg = <0x1b>;
   };
   /delete-node/ max15303@20;
  };
 };
};
# 12 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/zcu102-rev1.0.dtsi" 2

/ {
 model = "ZynqMP ZCU102 Rev1.0";
 compatible = "xlnx,zynqmp-zcu102-rev1.0", "xlnx,zynqmp-zcu102", "xlnx,zynqmp";
};

&eeprom {
 #address-cells = <1>;
 #size-cells = <1>;

 board_sn: board-sn@0 {
  reg = <0x0 0x14>;
 };

 eth_mac: eth-mac@20 {
  reg = <0x20 0x6>;
 };

 board_name: board-name@d0 {
  reg = <0xd0 0x6>;
 };

 board_revision: board-revision@e0 {
  reg = <0xe0 0x3>;
 };
};
# 514 "/home/jellyfish/Documents/xilinx-zcu102-2024.2/project-spec/hw-description/system-top.dts" 2
