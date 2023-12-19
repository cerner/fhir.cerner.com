 ID|Value\[x] Type|Description
-----------------------------------------|-----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------
 `apply-first-in-first-out`|[`boolean`]|Whether to apply FIFO logic for recurring encounters or not.
 `financial-transaction-account-number`|[`string`]|A value associated to the specific payment method usually represented as the last four digits of a credit card, the check number, the EFT number or Lockbox number.
 `financial-transaction-alias`|[`string`]|Client defined value to represent the combination of the type, subtype, and reason describing the financial transaction.
 `financial-transaction-allocation`|None (contains nested extensions)|Defines how the payment or adjustment is to be allocated across other resources.
 `financial-transaction-amount`|[`Money`]|The total amount of the financial transaction.
 `financial-transaction-card-brand`|[`string`]|Identifies the brand of credit card when credit card is used as a payment method.
 `financial-transaction-date`|[`date`]|Represents the expiration date if method is card or check date if method is check.
 `financial-transaction-location`|[`string`]|Client configured value representing the location or workflow that the payment was received in.
 `financial-transaction-method`|[`string`]|Describes the method of payment for the financial transaction.
 `financial-transaction-tendered-amount`|[`Money`]|The amount of cash originally tendered for payment. This value should be greater than or equal to the amount of the cash payment.
 `financial-transaction-type`|[`CodeableConcept`]|The classification of the transaction.
