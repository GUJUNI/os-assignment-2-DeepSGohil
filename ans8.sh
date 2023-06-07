while true; do
        echo "1) Area of rectangle"
        echo "2) Area of triangle"
        echo "3) Area of circle"
        echo "4) Exit"

        read -p "Enter your choice : " choice

        if [ $choice -eq 4 ];
        then
                exit 0
        fi

        case $choice in
                1)
                        read -p "Length : " l
                        read -p "Breadth : " b
                        echo "Area of rectangle = `expr $l \* $b`"
                        ;;
                2)
                        read -p "Base : " b
                        read -p "Height : " h
                        echo "Area of circle = `expr $b \* $h / 2`"
                        ;;
                3)
                        read -p "Radius : " radius
                        echo "Area of circle = `expr 22 / 7 \* $radius \* $radius`"
                        ;;
                *)
                        echo "Invalid choice"
                        ;;
        esac
done

