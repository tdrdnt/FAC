section .data
    N  dd 6
    demo_lap1 db "11:34"
    demo_lap2 db "10:35"

    laps_arr db "10:00", 0, "11:10", 0, "09:34", 0, "14:03", 0, "10:45", 0, "10:20", 0
    time_fmt db "%d ", 10, 0
    int_fmt db "%d ", 10, 0
    time_fmt_str db "%s", 10, 0

section .text
global main
extern printf

;TODO a: Implement int time_to_seconds(char *time_str)
; -> `time_str` is a string representing time in format `MM:SS`.
;     the string is always valid
; -> returns the number of seconds in the `time_str`.
time_to_seconds:
    push ebp
    mov ebp, esp

    leave
    ret

; TODO b: Implement int compare_laps(char *lap1_str, char *lap2_str)
; `lap1_str` and `lap2_str` are strings representing time in format `MM:SS`.
; returns 1, if lap1_str is faster than lap2_str
; returns -1, if lap1_str is slower than lap2_str
; return 0, if lap1_str is equal to lap2_str
compare_laps:
    push ebp
    mov ebp, esp


    leave
    ret

; TODO c: Implement count_total_time(char *time_str, int len)
; -> `time_str` is an array of bytes representing times in format `MM:SS`,
;     separated by `0` (end of string).
; -> `len` the number of elements in `time_str`.
; -> return the total time in the array.
count_total_time:
    push ebp
    mov ebp, esp


    leave
    ret

; TODO d: Implement `int count_slower_laps(char *time_arr, int len, char *demo_lap)
; -> `time_arr` is an array of bytes representing times in format `MM:SS`,
;     separated by `0` (end of string).
; -> `len` the number of elements in `time_str`.
; -> `demo_lap` is a string representing time in format `MM:SS`.
; -> returns the number of laps in `time_arr` strictly slower than `demo_lap`.
count_slower_laps:
    push ebp, 
    mov ebp, esp


    leave
    ret

main:
    push ebp
    mov ebp, esp

    ; TODO a: Compute the number of seconds in `demo_lap1` by calling
    ; `int time_to_seconds(char *time_str)` function.
    ; print the result using `printf` function


    ; TODO b: Compare `demo_lap2` and `demo_lap1` (in this order) by calling
    ; `int compare_laps(char *time_str1, char *time_str2)
    ; print the result using `printf` function


    ; TODO c: Compute total workout time for a training session described
    ; by `laps_arr` using `int count_total_time(char *time_str, int len)`
    ; print the result using `printf` function


    ; TODO d: Compute the number of strictly slower laps than `demo_lap2` using
    ; `int count_slower_laps(char *time_arr, int len, char *demo_lap)`
    ; print the result using `printf` function

    ; Return 0.
    xor eax, eax
    leave
    ret
