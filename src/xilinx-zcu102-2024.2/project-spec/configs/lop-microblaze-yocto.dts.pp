# 0 "/tools/Xilinx/PetaLinux/2024.2/sysroots/x86_64-petalinux-linux/usr/lib/python3.12/site-packages/lopper/lops/lop-microblaze-yocto.dts"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/tools/Xilinx/PetaLinux/2024.2/sysroots/x86_64-petalinux-linux/usr/lib/python3.12/site-packages/lopper/lops/lop-microblaze-yocto.dts"
# 12 "/tools/Xilinx/PetaLinux/2024.2/sysroots/x86_64-petalinux-linux/usr/lib/python3.12/site-packages/lopper/lops/lop-microblaze-yocto.dts"
/dts-v1/;

/ {
        compatible = "system-device-tree-v1,lop";
        lops {
                compatible = "system-device-tree-v1,lop";
                track_feature: track_feature {
                        compatible = "system-device-tree-v1,lop,code-v1";
                        noexec;
                        code = "
                            # print( 'track: lopper library routine: %s' % node )
                            try:
                                node.tunes[prop] = prop
                            except:
                                pass
                        ";
                };
                lop_0_1 {
                      compatible = "system-device-tree-v1,lop,select-v1";
                      select_1;
                      select_2 = "/cpus_microblaze.*/cpu*.*:compatible:.*microblaze";
                      lop_0_2 {
                              compatible = "system-device-tree-v1,lop,code-v1";
                              inherit = "subsystem";
                              code = "
                                    for n in tree.__selected__:
                                        val = n['compatible'].value[0]
                                        if val == 'pmu-microblaze':
                                           n.tunes = OrderedDict()
                                           n.tunes['microblaze'] = 'microblaze'
                                           n.tunes['version'] = 'v9.2'
                                           n.tune_type = val.split('-')[0]

                                        elif val == 'pmc-microblaze' or val == 'psm-microblaze':
                                           n.tunes = OrderedDict()
                                           n.tunes['microblaze'] = 'microblaze'
                                           n.tunes['version'] = 'v10.0'
                                           n.tune_type = val.split('-')[0]

                                        else:
                                           n.tune_type = re.split('@', n.name)[0]
                        ";
                      };
                };
                lop_1_1 {
                      compatible = "system-device-tree-v1,lop,select-v1";
                      select_1;
                      select_2 = "/cpus_microblaze.*/cpu*.*:compatible:.*microblaze";
                      select_3 = ":xlnx,use-barrel:1";
                      lop_1_1_1 {
                          compatible = "system-device-tree-v1,lop,code-v1";
                          code = "
                               if __selected__:
                                   for n in __selected__:
                                       n.tunes['barrel-shift'] = 'barrel-shift'
                          ";
                      };
                };
                lop_2_1 {
                      compatible = "system-device-tree-v1,lop,select-v1";
                      select_1;
                      select_2 = "/cpus_microblaze.*/cpu*.*:compatible:.*microblaze";
                      select_3 = ":xlnx,endianness:!1";
                      lop_2_1_1 {
                          compatible = "system-device-tree-v1,lop,code-v1";
                          code = "
                               if __selected__:
                                   for n in __selected__:
                                       n.tunes['bigendian'] = 'bigendian'
                          ";
                      };
                };
                lop_3_1 {
                      compatible = "system-device-tree-v1,lop,select-v1";
                      select_1;
                      select_2 = "/cpus_microblaze.*/cpu*.*:compatible:.*microblaze";
                      select_3 = ":xlnx,data-size:0x40";
                      lop_3_1_1 {
                          compatible = "system-device-tree-v1,lop,code-v1";
                          code = "
                               if __selected__:
                                   for n in __selected__:
                                       n.tunes['64-bit'] = '64-bit'
                          ";
                      };
                };
                lop_4_1 {
                      compatible = "system-device-tree-v1,lop,select-v1";
                      select_1;
                      select_2 = "/cpus_microblaze.*/cpu*.*:compatible:.*microblaze";
                      select_3 = ":xlnx,use-pcmp-instr:1";
                      lop_4_1_1 {
                          compatible = "system-device-tree-v1,lop,code-v1";
                          code = "
                               if __selected__:
                                   for n in __selected__:
                                       n.tunes['pattern-compare'] = 'pattern-compare'
                          ";
                      };
                };
                lop_5_1 {
                      compatible = "system-device-tree-v1,lop,select-v1";
                      select_1;
                      select_2 = "/cpus_microblaze.*/cpu*.*:compatible:.*microblaze";
                      select_3 = ":xlnx,use-reorder-instr:!0";
                      lop_5_1_1 {
                          compatible = "system-device-tree-v1,lop,code-v1";
                          code = "
                               if __selected__:
                                   for n in __selected__:
                                       n.tunes['reorder'] = 'reorder'
                          ";
                      };
                };
                lop_6_1 {
                      compatible = "system-device-tree-v1,lop,select-v1";
                      select_1;
                      select_2 = "/cpus_microblaze.*/cpu*.*:compatible:.*microblaze";
                      select_3 = ":xlnx,area-optimized:2";
                      lop_6_1_1 {
                          compatible = "system-device-tree-v1,lop,code-v1";
                          code = "
                               if __selected__:
                                   for n in __selected__:
                                       n.tunes['frequency-optimized'] = 'frequency-optimized'
                          ";
                      };
                };
                lop_7_1 {
                      compatible = "system-device-tree-v1,lop,select-v1";
                      select_1;
                      select_2 = "/cpus_microblaze.*/cpu*.*:compatible:.*microblaze";
                      select_3 = ":xlnx,use-hw-mul:1";
                      lop_7_1_1 {
                          compatible = "system-device-tree-v1,lop,code-v1";
                          code = "
                               if __selected__:
                                   for n in __selected__:
                                       n.tunes['multiply-low'] = 'multiply-low'
                          ";
                      };
                };
                lop_8_1 {
                      compatible = "system-device-tree-v1,lop,select-v1";
                      select_1;
                      select_2 = "/cpus_microblaze.*/cpu*.*:compatible:.*microblaze";
                      select_3 = ":xlnx,use-hw-mul:2";
                      lop_8_1_1 {
                          compatible = "system-device-tree-v1,lop,code-v1";
                          code = "
                               if __selected__:
                                   for n in __selected__:
                                       n.tunes['multiply-high'] = 'multiply-high'
                          ";
                      };
                };
                lop_9_1 {
                      compatible = "system-device-tree-v1,lop,select-v1";
                      select_1;
                      select_2 = "/cpus_microblaze.*/cpu*.*:compatible:.*microblaze";
                      select_3 = ":xlnx,use-div:1";
                      lop_9_1_1 {
                          compatible = "system-device-tree-v1,lop,code-v1";
                          code = "
                               if __selected__:
                                   for n in __selected__:
                                       n.tunes['divide-hard'] = 'divide-hard'
                          ";
                      };
                };
                lop_10_1 {
                      compatible = "system-device-tree-v1,lop,select-v1";
                      select_1;
                      select_2 = "/cpus_microblaze.*/cpu*.*:compatible:.*microblaze";
                      select_3 = ":xlnx,use-fpu:!1";
                      select_4 = ":xlnx,use-fpu:!2";
                      lop_10_1_1 {
                          compatible = "system-device-tree-v1,lop,code-v1";
                          code = "
                               if __selected__:
                                   for n in __selected__:
                                       n.tunes['fpu-soft'] = 'fpu-soft'
                          ";
                      };
                };
                lop_11_1 {
                      compatible = "system-device-tree-v1,lop,select-v1";
                      select_1;
                      select_2 = "/cpus_microblaze.*/cpu*.*:compatible:.*microblaze";
                      select_3 = ":xlnx,use-fpu:1";
                      lop_11_1_1 {
                          compatible = "system-device-tree-v1,lop,code-v1";
                          code = "
                               if __selected__:
                                   for n in __selected__:
                                       n.tunes['fpu-hard'] = 'fpu-hard'
                          ";
                      };
                };
                lop_12_1 {
                      compatible = "system-device-tree-v1,lop,select-v1";
                      select_1;
                      select_2 = "/cpus_microblaze.*/cpu*.*:compatible:.*microblaze";
                      select_3 = ":xlnx,use-fpu:2";
                      lop_12_1_1 {
                          compatible = "system-device-tree-v1,lop,code-v1";
                          code = "
                               if __selected__:
                                   for n in __selected__:
                                       n.tunes['fpu-hard-extended'] = 'fpu-hard-extended'
                          ";
                      };
                };
                lop_output_tunes {
                      compatible = "system-device-tree-v1,lop,select-v1";
                      select_1;
                      select_2 = "/cpus_microblaze.*/cpu*.*:compatible:.*microblaze";
                      lop_output_code {
                           compatible = "system-device-tree-v1,lop,code-v1";
                           code = "
                               cpu_addr = 0
                               firmware_cpus = {}
                               for n in __selected__:
                                   tname = 'microblaze-'+n.tune_type
                                   if n.tune_type == 'cpu':
                                       tname = tname + str(cpu_addr)
                                       cpu_addr += 1
                                   print( '# %s\\n#   compatible = \"%s\";' % (n, n['compatible'].value[0]))
                                   print( 'AVAILTUNES += \"%s\"' % tname )
                                   print( 'TUNE_FEATURES:tune-%s = \"%s\"' % (tname, ' '.join(n.tunes.values())))
                                   print( 'PACKAGE_EXTRA_ARCHS:tune-%s = \"${TUNE_PKGARCH}\"\\n' % tname )
                               ";
                      };
                };
        };
};
