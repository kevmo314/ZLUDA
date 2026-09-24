define amdgpu_kernel void @sink(ptr addrspace(4) byref(i64) %"54", ptr addrspace(4) byref(i64) %"55") #0 {
  %"56" = alloca i64, align 8, addrspace(5)
  %"57" = alloca i64, align 8, addrspace(5)
  %"58" = alloca i64, align 8, addrspace(5)
  %"59" = alloca i32, align 4, addrspace(5)
  %"60" = alloca i32, align 4, addrspace(5)
  %"61" = alloca i32, align 4, addrspace(5)
  %"66" = alloca i32, align 4, addrspace(5)
  %"70" = alloca i32, align 4, addrspace(5)
  %"74" = alloca i32, align 4, addrspace(5)
  %"75" = alloca i32, align 4, addrspace(5)
  %"76" = alloca i32, align 4, addrspace(5)
  br label %1

1:                                                ; preds = %0
  br label %"53"

"53":                                             ; preds = %1
  %2 = load i64, ptr addrspace(4) %"54", align 8
  store i64 %2, ptr addrspace(5) %"56", align 8
  %3 = load i64, ptr addrspace(4) %"55", align 8
  store i64 %3, ptr addrspace(5) %"57", align 8
  %4 = load i64, ptr addrspace(5) %"56", align 8
  %"88" = inttoptr i64 %4 to ptr
  %5 = load i64, ptr %"88", align 8
  store i64 %5, ptr addrspace(5) %"58", align 8
  %6 = load i64, ptr addrspace(5) %"58", align 8
  %"46" = bitcast i64 %6 to <2 x i32>
  %"90" = extractelement <2 x i32> %"46", i8 0
  %"69" = extractelement <2 x i32> %"46", i8 1
  store i32 %"90", ptr addrspace(5) %"59", align 4
  store i32 %"69", ptr addrspace(5) %"66", align 4
  %7 = load i64, ptr addrspace(5) %"58", align 8
  %"47" = bitcast i64 %7 to <2 x i32>
  %"72" = extractelement <2 x i32> %"47", i8 0
  %"92" = extractelement <2 x i32> %"47", i8 1
  store i32 %"72", ptr addrspace(5) %"70", align 4
  store i32 %"92", ptr addrspace(5) %"60", align 4
  %8 = load i64, ptr addrspace(5) %"56", align 8
  %"93" = inttoptr i64 %8 to ptr
  %9 = load <4 x i32>, ptr %"93", align 16
  %"78" = extractelement <4 x i32> %9, i8 0
  %"79" = extractelement <4 x i32> %9, i8 1
  %"80" = extractelement <4 x i32> %9, i8 2
  %"81" = extractelement <4 x i32> %9, i8 3
  store i32 %"78", ptr addrspace(5) %"74", align 4
  store i32 %"79", ptr addrspace(5) %"75", align 4
  store i32 %"80", ptr addrspace(5) %"61", align 4
  store i32 %"81", ptr addrspace(5) %"76", align 4
  %10 = load i64, ptr addrspace(5) %"57", align 8
  %11 = load i32, ptr addrspace(5) %"60", align 4
  %"94" = inttoptr i64 %10 to ptr
  store i32 %11, ptr %"94", align 4
  %12 = load i64, ptr addrspace(5) %"57", align 8
  %"95" = inttoptr i64 %12 to ptr
  %"50" = getelementptr inbounds i8, ptr %"95", i64 4
  %13 = load i32, ptr addrspace(5) %"59", align 4
  store i32 %13, ptr %"50", align 4
  %14 = load i64, ptr addrspace(5) %"57", align 8
  %"96" = inttoptr i64 %14 to ptr
  %"52" = getelementptr inbounds i8, ptr %"96", i64 8
  %15 = load i32, ptr addrspace(5) %"61", align 4
  store i32 %15, ptr %"52", align 4
  ret void
}

attributes #0 = { "amdgpu-ieee"="false" "amdgpu-unsafe-fp-atomics"="true" "denormal-fp-math"="preserve-sign" "denormal-fp-math-f32"="preserve-sign" "no-trapping-math"="true" "target-features"="+wavefrontsize32,-wavefrontsize64,+cumode,+precise-memory" "uniform-work-group-size"="true" }
