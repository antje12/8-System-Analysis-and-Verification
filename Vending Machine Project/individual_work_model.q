//This file was generated from (Academic) UPPAAL 4.1.26-1 (rev. 7BCF30B7363A9518), February 2022

/*

*/
A[] not deadlock

/*

*/
//NO_QUERY

/*

*/
(Dispensing.Dispense_Product and Inventory_Management.stock[selected_product] == 10) --> \
((Dispensing.Success and Inventory_Management.stock[selected_product] == 9) \
or \
(Dispensing.Error and Inventory_Management.stock[selected_product] == 10))

/*

*/
//NO_QUERY

/*

*/
E<> Item_Selection.Select and selected_product == 1

/*

*/
E<> Item_Selection.Select and selected_product == 2

/*

*/
E<> Item_Selection.Select and selected_product != 0

/*

*/
//NO_QUERY

/*

*/
Item_Selection.Select --> (Item_Selection.In_Stock or Item_Selection.Not_In_Stock)

/*

*/
//NO_QUERY

/*

*/
A[] (!Maintainer.Standby and !Maintainer.Requested) imply (User.Start or User.Thirsty or User.Hungry)

/*

*/
A[] (!User.Start and !User.Thirsty and !User.Hungry) imply (Maintainer.Standby or Maintainer.Requested)

/*

*/
//NO_QUERY

/*

*/
E<> Dispensing.Success and Inventory_Management.stock[selected_product] < 10

/*

*/
//NO_QUERY

/*

*/
A[] User_Authentication.errors < 4

/*

*/
E<> (Dispensing.Success and (Inventory_Management.timer <= 5))

/*

*/
A[] not (Dispensing.Success and Inventory_Management.timer > 5)

/*

*/
//NO_QUERY

/*

*/
E<> User.Start

/*

*/
E<> User.Thirsty

/*

*/
E<> User.Hungry

/*

*/
E<> User.Awaiting_Payment

/*

*/
E<> User.Awaiting_Response

/*

*/
E<> Maintainer.Standby

/*

*/
E<> Maintainer.Requested

/*

*/
E<> Maintainer.Filling

/*

*/
E<> Item_Selection.Selecting

/*

*/
E<> Item_Selection.Select

/*

*/
E<> Item_Selection.Check

/*

*/
E<> Item_Selection.In_Stock

/*

*/
E<> Item_Selection.Paying

/*

*/
E<> Item_Selection.Not_In_Stock

/*

*/
E<> Inventory_Management.Standby

/*

*/
E<> Inventory_Management.Checking

/*

*/
E<> Inventory_Management.Update_Stock

/*

*/
E<> Inventory_Management.Error

/*

*/
E<> Inventory_Management.Maintenance

/*

*/
E<> Payment_Processing.Start

/*

*/
E<> Payment_Processing.Card_Error

/*

*/
E<> Payment_Processing.Account_Payment

/*

*/
E<> Payment_Processing.Card_Payment

/*

*/
E<> Payment_Processing.Ready

/*

*/
E<> Payment_Processing.Refund

/*

*/
E<> Payment_Processing.Logging_In

/*

*/
E<> Payment_Processing.Standby

/*

*/
E<> User_Authentication.Standby

/*

*/
E<> User_Authentication.Log_In

/*

*/
E<> User_Authentication.Reject

/*

*/
E<> User_Authentication.Accept

/*

*/
E<> User_Authentication.Error

/*

*/
E<> User_Authentication.Retry

/*

*/
E<> Dispensing.Standby

/*

*/
E<> Dispensing.Dispense_Product

/*

*/
E<> Dispensing.Success

/*

*/
E<> Dispensing.Error
