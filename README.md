# Nmax

## Напишите скрипт nmax, который делает следующее:
* читает из входящего потока текстовые данные;
* по завершении ввода выводит n самых больших целых чисел, встретившихся в
полученных текстовых данных.
Дополнительные указания:
* числом считается любая непрерывная последовательность цифр в тексте;
* известно, что чисел длиннее 1000 цифр во входных данных нет;
* число n должно быть единственным параметром скрипта;
* код должен быть покрыт тестами;
* код должен быть оформлен в виде гема (содержащего исполняемый файл, код
модулей и т.д.);


## Installation
```
git clone https://github.com/right9alt/nmax.git
cd nmax
export PATH="./bin:$PATH"
setup
```
## Usage
```
cat test_large.txt | nmax 10
```
## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
