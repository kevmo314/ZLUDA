define amdgpu_kernel void @cvt_f32_f16_ftz(ptr addrspace(4) byref(i64) %"79", ptr addrspace(4) byref(i64) %"80") #0 {
  %"81" = alloca i64, align 8, addrspace(5)
  %"82" = alloca i64, align 8, addrspace(5)
  %"83" = alloca i32, align 4, addrspace(5)
  %"84" = alloca i32, align 4, addrspace(5)
  %"85" = alloca i32, align 4, addrspace(5)
  %"86" = alloca i32, align 4, addrspace(5)
  %"87" = alloca i16, align 2, addrspace(5)
  %"88" = alloca half, align 2, addrspace(5)
  %"89" = alloca float, align 4, addrspace(5)
  %"90" = alloca float, align 4, addrspace(5)
  %"91" = alloca float, align 4, addrspace(5)
  %"92" = alloca float, align 4, addrspace(5)
  %"93" = alloca i32, align 4, addrspace(5)
  %"94" = alloca i32, align 4, addrspace(5)
  %"95" = alloca i1, align 1, addrspace(5)
  %"96" = alloca i1, align 1, addrspace(5)
  br label %1

1:                                                ; preds = %0
  br label %"78"

"78":                                             ; preds = %1
  %2 = load i64, ptr addrspace(4) %"79", align 8
  store i64 %2, ptr addrspace(5) %"81", align 8
  %3 = load i64, ptr addrspace(4) %"80", align 8
  store i64 %3, ptr addrspace(5) %"82", align 8
  %4 = load i64, ptr addrspace(5) %"81", align 8
  %"197" = inttoptr i64 %4 to ptr
  %5 = load float, ptr %"197", align 4
  store float %5, ptr addrspace(5) %"89", align 4
  %6 = load i64, ptr addrspace(5) %"81", align 8
  %"198" = inttoptr i64 %6 to ptr
  %"63" = getelementptr inbounds i8, ptr %"198", i64 4
  %7 = load float, ptr %"63", align 4
  store float %7, ptr addrspace(5) %"90", align 4
  store i32 0, ptr addrspace(5) %"85", align 4
  store i32 0, ptr addrspace(5) %"86", align 4
  store i32 1, ptr addrspace(5) %"83", align 4
  br label %"13"

"13":                                             ; preds = %"37", %"78"
  %8 = load i32, ptr addrspace(5) %"83", align 4
  %"199" = trunc i32 %8 to i16
  store i16 %"199", ptr addrspace(5) %"87", align 2
  %9 = load i16, ptr addrspace(5) %"87", align 2
  %"108" = bitcast i16 %9 to half
  store half %"108", ptr addrspace(5) %"88", align 2
  %10 = load i32, ptr addrspace(5) %"83", align 4
  %"110" = uitofp i32 %10 to float
  store float %"110", ptr addrspace(5) %"92", align 4
  %11 = load float, ptr addrspace(5) %"92", align 4
  %"112" = fmul float %11, 0x3E70000000000000
  store float %"112", ptr addrspace(5) %"92", align 4
  %12 = load half, ptr addrspace(5) %"88", align 2
  %"114" = fpext half %12 to float
  store float %"114", ptr addrspace(5) %"91", align 4
  %13 = load float, ptr addrspace(5) %"91", align 4
  %"201" = bitcast float %13 to i32
  store i32 %"201", ptr addrspace(5) %"93", align 4
  %14 = load float, ptr addrspace(5) %"92", align 4
  %"202" = bitcast float %14 to i32
  store i32 %"202", ptr addrspace(5) %"94", align 4
  %15 = load i32, ptr addrspace(5) %"93", align 4
  %16 = load i32, ptr addrspace(5) %"94", align 4
  %17 = icmp ne i32 %15, %16
  store i1 %17, ptr addrspace(5) %"95", align 1
  %18 = load i1, ptr addrspace(5) %"95", align 1
  br i1 %18, label %"30", label %"31"

"30":                                             ; preds = %"13"
  %19 = load i32, ptr addrspace(5) %"85", align 4
  %"124" = add i32 %19, 1
  store i32 %"124", ptr addrspace(5) %"85", align 4
  br label %"31"

"31":                                             ; preds = %"30", %"13"
  %20 = load half, ptr addrspace(5) %"88", align 2
  %"126" = fpext half %20 to float
  store float %"126", ptr addrspace(5) %"91", align 4
  %21 = load float, ptr addrspace(5) %"91", align 4
  %22 = load float, ptr addrspace(5) %"89", align 4
  %23 = load float, ptr addrspace(5) %"90", align 4
  %"128" = call float @llvm.fma.f32(float %21, float %22, float %23)
  store float %"128", ptr addrspace(5) %"91", align 4
  %24 = load float, ptr addrspace(5) %"92", align 4
  %25 = load float, ptr addrspace(5) %"89", align 4
  %26 = load float, ptr addrspace(5) %"90", align 4
  %"132" = call float @llvm.fma.f32(float %24, float %25, float %26)
  store float %"132", ptr addrspace(5) %"92", align 4
  %27 = load float, ptr addrspace(5) %"91", align 4
  %"203" = bitcast float %27 to i32
  store i32 %"203", ptr addrspace(5) %"93", align 4
  %28 = load float, ptr addrspace(5) %"92", align 4
  %"204" = bitcast float %28 to i32
  store i32 %"204", ptr addrspace(5) %"94", align 4
  %29 = load i32, ptr addrspace(5) %"93", align 4
  %30 = load i32, ptr addrspace(5) %"94", align 4
  %31 = icmp ne i32 %29, %30
  store i1 %31, ptr addrspace(5) %"95", align 1
  %32 = load i1, ptr addrspace(5) %"95", align 1
  br i1 %32, label %"32", label %"33"

"32":                                             ; preds = %"31"
  %33 = load i32, ptr addrspace(5) %"86", align 4
  %"144" = add i32 %33, 1
  store i32 %"144", ptr addrspace(5) %"86", align 4
  br label %"33"

"33":                                             ; preds = %"32", %"31"
  %34 = load i16, ptr addrspace(5) %"87", align 2
  %"146" = or i16 %34, -32768
  store i16 %"146", ptr addrspace(5) %"87", align 2
  %35 = load i16, ptr addrspace(5) %"87", align 2
  %"148" = bitcast i16 %35 to half
  store half %"148", ptr addrspace(5) %"88", align 2
  %36 = load i32, ptr addrspace(5) %"83", align 4
  %"150" = sub i32 0, %36
  store i32 %"150", ptr addrspace(5) %"84", align 4
  %37 = load i32, ptr addrspace(5) %"84", align 4
  %"152" = sitofp i32 %37 to float
  store float %"152", ptr addrspace(5) %"92", align 4
  %38 = load float, ptr addrspace(5) %"92", align 4
  %"154" = fmul float %38, 0x3E70000000000000
  store float %"154", ptr addrspace(5) %"92", align 4
  %39 = load half, ptr addrspace(5) %"88", align 2
  %"156" = fpext half %39 to float
  store float %"156", ptr addrspace(5) %"91", align 4
  %40 = load float, ptr addrspace(5) %"91", align 4
  %"207" = bitcast float %40 to i32
  store i32 %"207", ptr addrspace(5) %"93", align 4
  %41 = load float, ptr addrspace(5) %"92", align 4
  %"208" = bitcast float %41 to i32
  store i32 %"208", ptr addrspace(5) %"94", align 4
  %42 = load i32, ptr addrspace(5) %"93", align 4
  %43 = load i32, ptr addrspace(5) %"94", align 4
  %44 = icmp ne i32 %42, %43
  store i1 %44, ptr addrspace(5) %"95", align 1
  %45 = load i1, ptr addrspace(5) %"95", align 1
  br i1 %45, label %"34", label %"35"

"34":                                             ; preds = %"33"
  %46 = load i32, ptr addrspace(5) %"85", align 4
  %"166" = add i32 %46, 1
  store i32 %"166", ptr addrspace(5) %"85", align 4
  br label %"35"

"35":                                             ; preds = %"34", %"33"
  %47 = load half, ptr addrspace(5) %"88", align 2
  %"168" = fpext half %47 to float
  store float %"168", ptr addrspace(5) %"91", align 4
  %48 = load float, ptr addrspace(5) %"91", align 4
  %49 = load float, ptr addrspace(5) %"89", align 4
  %50 = load float, ptr addrspace(5) %"90", align 4
  %"170" = call float @llvm.fma.f32(float %48, float %49, float %50)
  store float %"170", ptr addrspace(5) %"91", align 4
  %51 = load float, ptr addrspace(5) %"92", align 4
  %52 = load float, ptr addrspace(5) %"89", align 4
  %53 = load float, ptr addrspace(5) %"90", align 4
  %"174" = call float @llvm.fma.f32(float %51, float %52, float %53)
  store float %"174", ptr addrspace(5) %"92", align 4
  %54 = load float, ptr addrspace(5) %"91", align 4
  %"209" = bitcast float %54 to i32
  store i32 %"209", ptr addrspace(5) %"93", align 4
  %55 = load float, ptr addrspace(5) %"92", align 4
  %"210" = bitcast float %55 to i32
  store i32 %"210", ptr addrspace(5) %"94", align 4
  %56 = load i32, ptr addrspace(5) %"93", align 4
  %57 = load i32, ptr addrspace(5) %"94", align 4
  %58 = icmp ne i32 %56, %57
  store i1 %58, ptr addrspace(5) %"95", align 1
  %59 = load i1, ptr addrspace(5) %"95", align 1
  br i1 %59, label %"36", label %"37"

"36":                                             ; preds = %"35"
  %60 = load i32, ptr addrspace(5) %"86", align 4
  %"186" = add i32 %60, 1
  store i32 %"186", ptr addrspace(5) %"86", align 4
  br label %"37"

"37":                                             ; preds = %"36", %"35"
  %61 = load i32, ptr addrspace(5) %"83", align 4
  %"188" = add i32 %61, 1
  store i32 %"188", ptr addrspace(5) %"83", align 4
  %62 = load i32, ptr addrspace(5) %"83", align 4
  %63 = icmp ult i32 %62, 1024
  store i1 %63, ptr addrspace(5) %"96", align 1
  %64 = load i1, ptr addrspace(5) %"96", align 1
  br i1 %64, label %"13", label %"39"

"39":                                             ; preds = %"37"
  %65 = load i64, ptr addrspace(5) %"82", align 8
  %66 = load i32, ptr addrspace(5) %"85", align 4
  %"211" = inttoptr i64 %65 to ptr
  store i32 %66, ptr %"211", align 4
  %67 = load i64, ptr addrspace(5) %"82", align 8
  %"212" = inttoptr i64 %67 to ptr
  %"77" = getelementptr inbounds i8, ptr %"212", i64 4
  %68 = load i32, ptr addrspace(5) %"86", align 4
  store i32 %68, ptr %"77", align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #1

attributes #0 = { "amdgpu-ieee"="false" "amdgpu-unsafe-fp-atomics"="true" "denormal-fp-math"="ieee" "denormal-fp-math-f32"="preserve-sign" "no-trapping-math"="true" "target-features"="+wavefrontsize32,-wavefrontsize64,+cumode,+precise-memory" "uniform-work-group-size"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
