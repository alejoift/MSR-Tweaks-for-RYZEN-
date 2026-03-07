@echo on

:: ---------- SMU Overrides ----------
msr-cmd.exe -l write 0xC0011039 0x0000000000000001
msr-cmd.exe -l write 0xC0011035 0x0000000000000001
msr-cmd.exe -l write 0xC0011034 0x0000000000000000

:: ---------- C-States y Frecuencia ----------
msr-cmd.exe -l write 0xC0011005 0x0000000000000000
msr-cmd.exe -l write 0xC0011020 0x0000000000000001
msr-cmd.exe -l write 0xC0010015 0x0000000000000001
msr-cmd.exe -l write 0xC0010062 0x00000001

:: ---------- Caché e instrucciones ----------
msr-cmd.exe -l write 0xC001102B 0x0000000000000001
msr-cmd.exe -l write 0xC001103C 0x0000000000000003

:: ---------- Prefetching ----------
msr-cmd.exe -l write 0xC001102C 0x0000000000000001
msr-cmd.exe -l write 0xC001102D 0x0000000000000001

:: ---------- DRAM y coherencia NB ----------
msr-cmd.exe -l write 0xC0011022 0x0000000000510000
msr-cmd.exe -l write 0xC001102A 0x0000000000000000
msr-cmd.exe -l write 0xC0011031 0x0000000000000000
msr-cmd.exe -l write 0xC0011029 0x0000000000000000

:: ---------- Latencia y sincronización entre núcleos ----------
msr-cmd.exe -l write 0xC001102F 0x0000000000000000
msr-cmd.exe -l write 0xC001103B 0x0000000000000000

:: ---------- Nuevos Avanzados ----------
msr-cmd.exe -l write 0xC0011021 0x0000000000000040
msr-cmd.exe -l write 0xC0010293 0x0000000000100000
msr-cmd.exe -l write 0xC0010030 0x0000000000000000
msr-cmd.exe -l write 0xC0010041 0x0000000000000000
msr-cmd.exe -l write 0xC0010042 0x0000000000000000

:: Nuevos MSR adicionales para máximo FPS
msr-cmd.exe -l write 0xC0011002 0x0000000000000001
msr-cmd.exe -l write 0xC0011015 0x0000000000000000
msr-cmd.exe -l write 0xC0011060 0x0000000000000000
msr-cmd.exe -l write 0xC0011024 0x0000000000000003
msr-cmd.exe -l write 0xC0011061 0x0000000000000000

:: MSR adicionales seguros y compatibles
msr-cmd.exe -l write 0xC0011016 0x0000000000000001
msr-cmd.exe -l write 0xC001103D 0x0000000000000003
msr-cmd.exe -l write 0xC0011026 0x0000000000000001
msr-cmd.exe -l write 0xC0011027 0x0000000000000004
msr-cmd.exe -l write 0xC001103A 0x0000000000000001

:: Batch 3 - MSR avanzados seguros

msr-cmd.exe -l write 0xC0010031 0x0000000000000001
msr-cmd.exe -l write 0xC0011028 0x0000000000000001
msr-cmd.exe -l write 0xC0011036 0x0000000000000001
msr-cmd.exe -l write 0xC0011037 0x0000000000000001
msr-cmd.exe -l write 0xC0011025 0x0000000000000001

:: Batch 4 - Instrucción, decodificación, fetch optimizado
msr-cmd.exe -l write 0xC0011030 0x0000000000000001
msr-cmd.exe -l write 0xC0011033 0x0000000000000002
msr-cmd.exe -l write 0xC001103F 0x0000000000000001
msr-cmd.exe -l write 0xC001103E 0x0000000000000001
msr-cmd.exe -l write 0xC0011032 0x0000000000000001

:: Batch 5 - Optimización de Load/Store y ejecución
msr-cmd.exe -l write 0xC0011040 0x0000000000000001
msr-cmd.exe -l write 0xC0011041 0x0000000000000000
msr-cmd.exe -l write 0xC0011042 0x0000000000000001
msr-cmd.exe -l write 0xC0011043 0x0000000000000000
msr-cmd.exe -l write 0xC0011044 0x0000000000000001

:: Batch 6 - Refinamiento de ejecución y colas internas
msr-cmd.exe -l write 0xC0011045 0x0000000000000001
msr-cmd.exe -l write 0xC0011046 0x0000000000000000
msr-cmd.exe -l write 0xC0011047 0x0000000000000001
msr-cmd.exe -l write 0xC0011048 0x0000000000000001
msr-cmd.exe -l write 0xC0011049 0x0000000000000001

:: Batch 5 - Pipeline tuning y ejecución especulativa
msr-cmd.exe -l write 0xC0011040 0x0000000000000001
msr-cmd.exe -l write 0xC0011041 0x0000000000000001
msr-cmd.exe -l write 0xC0011042 0x0000000000000001
msr-cmd.exe -l write 0xC0011043 0x0000000000000001
msr-cmd.exe -l write 0xC0011044 0x0000000000000001

:: Batch 6 - Pipeline interno, renaming, scheduler tuning
msr-cmd.exe -l write 0xC0011045 0x0000000000000001
msr-cmd.exe -l write 0xC0011046 0x0000000000000001
msr-cmd.exe -l write 0xC0011047 0x0000000000000001
msr-cmd.exe -l write 0xC0011048 0x0000000000000001
msr-cmd.exe -l write 0xC0011049 0x0000000000000001

:: Batch 7 - Fusión, ejecución, TLB y uOp flow
msr-cmd.exe -l write 0xC001104A 0x0000000000000001
msr-cmd.exe -l write 0xC001104B 0x0000000000000001
msr-cmd.exe -l write 0xC001104C 0x0000000000000001
msr-cmd.exe -l write 0xC001104D 0x0000000000000001
msr-cmd.exe -l write 0xC001104E 0x0000000000000001

:: Batch 8 - Coherencia, buffers y dependencias
msr-cmd.exe -l write 0xC001104F 0x0000000000000001
msr-cmd.exe -l write 0xC0011050 0x0000000000000001
msr-cmd.exe -l write 0xC0011051 0x0000000000000001
msr-cmd.exe -l write 0xC0011052 0x0000000000000000
msr-cmd.exe -l write 0xC0011053 0x0000000000000001

:: Batch 9 - Store/Load replay y control de micro-ops
msr-cmd.exe -l write 0xC0011054 0x0000000000000001
msr-cmd.exe -l write 0xC0011055 0x0000000000000001
msr-cmd.exe -l write 0xC0011056 0x0000000000000001
msr-cmd.exe -l write 0xC0011057 0x0000000000000001
msr-cmd.exe -l write 0xC0011058 0x0000000000000001

:: Batch 10 - Branch prediction y control de replays
msr-cmd.exe -l write 0xC0011059 0x0000000000000001
msr-cmd.exe -l write 0xC001105A 0x0000000000000001
msr-cmd.exe -l write 0xC001105B 0x0000000000000001
msr-cmd.exe -l write 0xC001105C 0x0000000000000001
msr-cmd.exe -l write 0xC001105D 0x0000000000000001

:: Batch 11 - Scheduler, retire y optimización de decode
msr-cmd.exe -l write 0xC001105E 0x0000000000000001
msr-cmd.exe -l write 0xC001105F 0x0000000000000001
msr-cmd.exe -l write 0xC0011060 0x0000000000000001
msr-cmd.exe -l write 0xC0011061 0x0000000000000001
msr-cmd.exe -l write 0xC0011062 0x0000000000000001

:: Batch 12 - Predictivo, retire, coherencia interna
msr-cmd.exe -l write 0xC0011063 0x0000000000000001
msr-cmd.exe -l write 0xC0011064 0x0000000000000001
msr-cmd.exe -l write 0xC0011065 0x0000000000000001
msr-cmd.exe -l write 0xC0011066 0x0000000000000001
msr-cmd.exe -l write 0xC0011067 0x0000000000000001

:: Batch 13 - Congestión interna y replay controlado
msr-cmd.exe -l write 0xC0011068 0x0000000000000001
msr-cmd.exe -l write 0xC0011069 0x0000000000000001
msr-cmd.exe -l write 0xC001106A 0x0000000000000001
msr-cmd.exe -l write 0xC001106B 0x0000000000000001
msr-cmd.exe -l write 0xC001106C 0x0000000000000001

:: Batch 14 - Congestión de decode y ejecución rápida
msr-cmd.exe -l write 0xC001106D 0x0000000000000001
msr-cmd.exe -l write 0xC001106E 0x0000000000000001
msr-cmd.exe -l write 0xC001106F 0x0000000000000001
msr-cmd.exe -l write 0xC0011070 0x0000000000000001
msr-cmd.exe -l write 0xC0011071 0x0000000000000001

:: Batch 15 - Execution boost y saturación inteligente
msr-cmd.exe -l write 0xC0011072 0x0000000000000001
msr-cmd.exe -l write 0xC0011073 0x0000000000000001
msr-cmd.exe -l write 0xC0011074 0x0000000000000001
msr-cmd.exe -l write 0xC0011075 0x0000000000000001
msr-cmd.exe -l write 0xC0011076 0x0000000000000001

:: Batch 16 - Pipeline robusto y scheduling inteligente
msr-cmd.exe -l write 0xC0011077 0x0000000000000001
msr-cmd.exe -l write 0xC0011078 0x0000000000000001
msr-cmd.exe -l write 0xC0011079 0x0000000000000001
msr-cmd.exe -l write 0xC001107A 0x0000000000000001
msr-cmd.exe -l write 0xC001107B 0x0000000000000001

:: Batch 17 - Decode extendido y store rápido
msr-cmd.exe -l write 0xC001107C 0x0000000000000001
msr-cmd.exe -l write 0xC001107D 0x0000000000000001
msr-cmd.exe -l write 0xC001107E 0x0000000000000001
msr-cmd.exe -l write 0xC001107F 0x0000000000000001
msr-cmd.exe -l write 0xC0011080 0x0000000000000001

:: Batch 18 - Resolución de conflictos y ejecución especulativa
msr-cmd.exe -l write 0xC0011081 0x0000000000000001
msr-cmd.exe -l write 0xC0011082 0x0000000000000001
msr-cmd.exe -l write 0xC0011083 0x0000000000000001
msr-cmd.exe -l write 0xC0011084 0x0000000000000001
msr-cmd.exe -l write 0xC0011085 0x0000000000000001

:: Batch 19 - Retiro eficiente y prioridad lógica
msr-cmd.exe -l write 0xC0011086 0x0000000000000001
msr-cmd.exe -l write 0xC0011087 0x0000000000000001
msr-cmd.exe -l write 0xC0011088 0x0000000000000001
msr-cmd.exe -l write 0xC0011089 0x0000000000000001
msr-cmd.exe -l write 0xC001108A 0x0000000000000000

:: Batch 20 -
msr-cmd.exe -l write 0xC001108B 0x0000000000000001
msr-cmd.exe -l write 0xC001108C 0x0000000000000001
msr-cmd.exe -l write 0xC001108D 0x0000000000000001
msr-cmd.exe -l write 0xC001108E 0x0000000000000001
msr-cmd.exe -l write 0xC001108F 0x0000000000000001







exit