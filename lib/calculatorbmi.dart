class calci{
  calci({this.height,this.weight});
  final int height;
  final int weight;
  double _bmi;
String calculateit()
{
  double x=(height/100)*(height/100);
   _bmi=weight/x;
  return _bmi.toStringAsFixed(1);

}
String getresult()
{
  if(_bmi>=25.0)
    {
      return 'Overweight';
    }
  else if(_bmi>18.5)
    {
      return 'Normal';
    }
  else
    {
      return 'Underweight';
    }
}
String sentence()
{
  if(_bmi>=25.0)
  {
    return 'You have a higher than normal body weight :| . Try to exercise more!';
  }
  else if(_bmi>18.5)
  {
    return 'You have a normal body weight . Good Job :)';
  }
  else
  {
    return 'You have a lower than normal body weight :\'/ . You can eat a bit more.';
  }
}
}