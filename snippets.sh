#Testing and Practising Syntax

#Get todays date
echo "Today is " `date`


#check if virtual environment is there in the directory or not

if ! which virtualenv
then
   echo virtualenv not installed on this machine
   exit 1
fi


f [[ ! -f ./venv/bin/activate ]]
then
   virtualenv venv
   . ./venv/bin/activate
else
   . ./venv/bin/activate
fi