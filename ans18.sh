echo -n "Enter the cost price: "
read cost_price

echo -n "Enter the selling price: "
read selling_price

if (( selling_price > cost_price )); then
  profit=$((selling_price - cost_price))
  echo "The seller has made a profit of $profit"
elif (( selling_price < cost_price )); then
  loss=$((cost_price - selling_price))
  echo "The seller has incurred a loss of $loss"
else
  echo "The seller has neither made a profit nor incurred a loss"
fi
