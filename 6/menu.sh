#!/bin/bash

header () {
    echo -e "\n\n"
    echo "System Information Menu"
    echo -e "1) File Systems\t2) OS\t 3) Host"
    echo -e "4) Users\t5) Date\t 6) Exit"
    echo -e "\n\n"
    read -p "Enter User Selection: " input
    printf "\033c"
}

while : 
do
    header
    case $input in
        1) df -h ;;
        2) uname ;;
        3) hostname ;;
        4) who ;;
        5) date ;;
        6) exit 1 ;;
        *) echo -e No Command "\n\n" ;;
    esac
done

# Master Code 
#!/bin/bash
selection=
until [ "$selection" = "6" ]; do
echo -e "\n\n"
echo -e "\t\tSystem Information Menu"
echo -n "1) File Systems"
echo -en "\t\t2) OS"
echo -e "\t\t3) Host"
echo -n "4) Users"
echo -en "\t\t5) Date"
echo -e "\t\t6) Exit"
echo ""
echo ""
echo -n "Enter selection: "
read selection
echo ""
case $selection in

1 ) clear ; df -h ;;
2 ) clear ; uname ;;
3 ) clear ; hostname ;;
4 ) clear ; who ;;
5 ) clear ; date ;;
6 ) clear ; exit ;;
* ) clear ; echo "Please enter a number from menu"
esac
done