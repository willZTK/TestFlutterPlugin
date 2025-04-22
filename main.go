package main

/*
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
*/
import "C"

//export TestPlus
func TestPlus(a, b int) int {
	return a + b
}

func main() {}
