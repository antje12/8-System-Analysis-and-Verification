//This file was generated from (Academic) UPPAAL 4.1.18 (rev. 5444), November 2013

/*

*/
User.select_coke --> User.getcoke == true

/*

*/
E<>  Soda_Machine.coke == 0 and User.getcoke == 1

/*

*/
A[] (Soda_Machine.coke > 0 and User.select_coke) imply User.getcoke == true

/*
env cannot send 'up' or 'down' after sending 'shut_down' (encoded using an error location).
*/
A[] not deadlock
