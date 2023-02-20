// RUN: byteir-translate %s -mlir-to-llvmir | FileCheck %s

// CHECK-LABEL: constant
// CHECK-LABEL: define void @_mlir_ciface_Unknown
module attributes {byre.container_module, llvm.data_layout = ""} {
  llvm.mlir.global private constant @__constant_1x128xi32(dense<"0x000000000100000002000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F000000200000002100000022000000230000002400000025000000260000002700000028000000290000002A0000002B0000002C0000002D0000002E0000002F000000300000003100000032000000330000003400000035000000360000003700000038000000390000003A0000003B0000003C0000003D0000003E0000003F000000400000004100000042000000430000004400000045000000460000004700000048000000490000004A0000004B0000004C0000004D0000004E0000004F000000500000005100000052000000530000005400000055000000560000005700000058000000590000005A0000005B0000005C0000005D0000005E0000005F000000600000006100000062000000630000006400000065000000660000006700000068000000690000006A0000006B0000006C0000006D0000006E0000006F000000700000007100000072000000730000007400000075000000760000007700000078000000790000007A0000007B0000007C0000007D0000007E0000007F000000"> : tensor<1x128xi32>) {addr_space = 0 : i32} : !llvm.array<1 x array<128 x i32>>
  llvm.func @Unknown1(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr<i64>, %arg6: !llvm.ptr<i64>, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr<i64>, %arg11: !llvm.ptr<i64>, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: !llvm.ptr<i32>, %arg16: !llvm.ptr<i32>, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: !llvm.ptr<i32>, %arg30: !llvm.ptr<i32>, %arg31: i64, %arg32: i64, %arg33: i64, %arg34: i64, %arg35: i64) attributes {__byre__kernel_name = "Unknown1", __byre__llvm_file_name = "host_kernels.ll", __byteir_hlo_aggressive_fusion__, arg_offsets = [0 : i32, 1 : i32, 2 : i32, 3 : i32, 4 : i32, 5 : i32], byre_compute_name = "LLVMJITOp", byre_force_compute_name, llvm.emit_c_interface} {
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.constant(128 : index) : i64
    %2 = llvm.mlir.constant(0 : index) : i64
    %3 = llvm.mlir.addressof @__constant_1x128xi32 : !llvm.ptr<array<1 x array<128 x i32>>>
    %4 = llvm.getelementptr %3[0, 0, 0] : (!llvm.ptr<array<1 x array<128 x i32>>>) -> !llvm.ptr<i32>
    llvm.br ^bb1(%2 : i64)
  ^bb1(%5: i64):  // 2 preds: ^bb0, ^bb2
    %6 = llvm.icmp "slt" %5, %1 : i64
    llvm.cond_br %6, ^bb2, ^bb3(%2 : i64)
  ^bb2:  // pred: ^bb1
    %7 = llvm.icmp "slt" %5, %2 : i64
    %8 = llvm.add %5, %1  : i64
    %9 = llvm.select %7, %8, %5 : i1, i64
    %10 = llvm.mul %2, %1  : i64
    %11 = llvm.add %10, %9  : i64
    %12 = llvm.getelementptr %4[%11] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %13 = llvm.load %12 : !llvm.ptr<i32>
    %14 = llvm.load %arg11 : !llvm.ptr<i64>
    %15 = llvm.load %arg1 : !llvm.ptr<i64>
    %16 = llvm.load %arg6 : !llvm.ptr<i64>
    %17 = llvm.add %15, %16  : i64
    %18 = llvm.add %14, %17  : i64
    %19 = llvm.trunc %18 : i64 to i32
    %20 = llvm.icmp "slt" %13, %19 : i32
    %21 = llvm.zext %20 : i1 to i32
    %22 = llvm.mul %2, %1  : i64
    %23 = llvm.add %22, %9  : i64
    %24 = llvm.getelementptr %arg23[%23] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %21, %24 : !llvm.ptr<i32>
    %25 = llvm.add %5, %0  : i64
    llvm.br ^bb1(%25 : i64)
  ^bb3(%26: i64):  // 2 preds: ^bb1, ^bb4
    %27 = llvm.icmp "slt" %26, %1 : i64
    llvm.cond_br %27, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %28 = llvm.icmp "slt" %26, %2 : i64
    %29 = llvm.add %26, %1  : i64
    %30 = llvm.select %28, %29, %26 : i1, i64
    %31 = llvm.mul %2, %1  : i64
    %32 = llvm.add %31, %30  : i64
    %33 = llvm.getelementptr %arg23[%32] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %34 = llvm.load %33 : !llvm.ptr<i32>
    %35 = llvm.mul %2, %1  : i64
    %36 = llvm.add %35, %30  : i64
    %37 = llvm.getelementptr %arg16[%36] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %38 = llvm.load %37 : !llvm.ptr<i32>
    %39 = llvm.mul %34, %38  : i32
    %40 = llvm.mul %2, %1  : i64
    %41 = llvm.add %40, %30  : i64
    %42 = llvm.getelementptr %arg30[%41] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %39, %42 : !llvm.ptr<i32>
    %43 = llvm.add %26, %0  : i64
    llvm.br ^bb3(%43 : i64)
  ^bb5:  // pred: ^bb3
    llvm.return
  }
  llvm.func @_mlir_ciface_Unknown1(%arg0: !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg5: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>) attributes {__byre__kernel_name = "Unknown1", __byre__llvm_file_name = "host_kernels.ll", __byteir_hlo_aggressive_fusion__, arg_offsets = [0 : i32, 1 : i32, 2 : i32, 3 : i32, 4 : i32, 5 : i32], byre_compute_name = "LLVMJITOp", byre_force_compute_name, llvm.emit_c_interface} {
    %0 = llvm.load %arg0 : !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>>
    %7 = llvm.extractvalue %6[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.extractvalue %6[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.extractvalue %6[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.extractvalue %6[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.extractvalue %6[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %19 = llvm.extractvalue %18[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.extractvalue %18[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.extractvalue %18[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.extractvalue %18[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.extractvalue %18[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.extractvalue %18[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.extractvalue %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.load %arg4 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %27 = llvm.extractvalue %26[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.extractvalue %26[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.extractvalue %26[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.extractvalue %26[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.extractvalue %26[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.extractvalue %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.load %arg5 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %35 = llvm.extractvalue %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.extractvalue %34[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.extractvalue %34[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.extractvalue %34[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.extractvalue %34[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.extractvalue %34[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @Unknown1(%1, %2, %3, %4, %5, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %19, %20, %21, %22, %23, %24, %25, %27, %28, %29, %30, %31, %32, %33, %35, %36, %37, %38, %39, %40, %41) : (!llvm.ptr<i64>, !llvm.ptr<i64>, i64, i64, i64, !llvm.ptr<i64>, !llvm.ptr<i64>, i64, i64, i64, !llvm.ptr<i64>, !llvm.ptr<i64>, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64) -> ()
    llvm.return
  }
}


