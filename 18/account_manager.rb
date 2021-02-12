# frozen_string_literal: true

# class
class String
  def black;          "\e[30m#{self}\e[0m" end
  def red;            "\e[31m#{self}\e[0m" end
  def green;          "\e[32m#{self}\e[0m" end
  def brown;          "\e[33m#{self}\e[0m" end
  def blue;           "\e[34m#{self}\e[0m" end
  def magenta;        "\e[35m#{self}\e[0m" end
  def cyan;           "\e[36m#{self}\e[0m" end
  def gray;           "\e[37m#{self}\e[0m" end
  
  def bg_black;       "\e[40m#{self}\e[0m" end
  def bg_red;         "\e[41m#{self}\e[0m" end
  def bg_green;       "\e[42m#{self}\e[0m" end
  def bg_brown;       "\e[43m#{self}\e[0m" end
  def bg_blue;        "\e[44m#{self}\e[0m" end
  def bg_magenta;     "\e[45m#{self}\e[0m" end
  def bg_cyan;        "\e[46m#{self}\e[0m" end
  def bg_gray;        "\e[47m#{self}\e[0m" end
  
  def bold;           "\e[1m#{self}\e[22m" end
  def italic;         "\e[3m#{self}\e[23m" end
  def underline;      "\e[4m#{self}\e[24m" end
  def blink;          "\e[5m#{self}\e[25m" end
  def reverse_color;  "\e[7m#{self}\e[27m" end
end

# class
class Account
  attr_accessor :account_holder
  attr_reader :balance
  attr_reader :account_id

  @@total_accounts = 1

  def self.total_accounts
    @@account_count
  end

  def initialize(account_holder, password, balance = 0)
    @account_holder = account_holder
    @balance = balance
    @account_password = password
    @account_id = @@total_accounts
    @@total_accounts += 1
  end

  def withdraw(amount)
    @balance -= amount if amount.positive? && amount <= @balance
  end

  def deposit(amount)
    @balance += amount if amount.positive?
  end

  def password_match?(password)
    @account_password == password
  end
end

# Main Menu

accounts = {}

default_account = Account.new('admin', 'admin', 500)

accounts[default_account.account_id] = default_account

loop do
  puts "\n----------------------------------------------------------".green
  puts '1. Create an account'.green
  puts '2. Open your account'.green
  puts '-1. Quit'.green
  print 'Please select an option:'

  choice = gets.to_i
  break if choice == -1

  case choice
  when 1
    print 'Please enter your name: '
    name = gets.chomp
    print 'Please enter password for the account: '
    password = gets.chomp

    new_account = Account.new(name, password)
    accounts[new_account.account_id] = new_account

    puts "\n" + '----------------------------------------------------------'

    puts "Thank you Mr. #{new_account.account_holder}!"
    puts "Please remember your a/c number is: #{new_account.account_id}"

    puts '----------------------------------------------------------' + "\n"

  when 2
    loop do
      print 'Please enter account nummber(or -1 to quit): '
      account_number = gets.to_i
      break if account_number == -1

      current_account = accounts[account_number]
      if !current_account.nil?
        loop do
          print 'Please enter password(or -1 to quit): '
          password = gets.chomp
          break if password == '-1'

          if current_account.password_match?(password)
            puts "\n----------------------------------------------------------".green
            puts "Welcome Mr. #{current_account.account_holder}"
            puts '----------------------------------------------------------'.green
            loop do
              puts "\n----------------------------------------------------------".green
              puts '1. Check balance'.green
              puts '2. Withdraw cash'.green
              puts '3. Deposit cash'.green
              puts '-1. Log out'.green
              print 'Pleass enter number of your choice: '

              choice = gets.chomp
              break if choice == '-1'

              case choice

              when '1'
                puts "\nYour account balance is: #{current_account.balance}"

              when '2'
                print 'Please enter amount:'
                amount = gets.to_i
                if amount.positive?
                  current_account.withdraw(amount)
                  puts "\n#{amount} have been withdrawn."
                  puts "Your new balance is: #{current_account.balance}"
                else
                  puts 'Amount should be grater than 0'.red.bold
                end

              when '3'
                print 'Please enter amount:'
                amount = gets.to_i
                if amount.positive?
                  current_account.deposite(amount)
                  puts "\n#{amount} have been deposited."
                  puts "Your new balance is: #{current_account.balance}"
                else
                  puts 'Amount should be greater than 0'.red.bold
                end
              else
                puts 'Error: Invalid choice'.red.bold
              end
            end
          else
            puts 'Error: Incorrect password!'.red.bold
          end
        end
      else
        puts 'Oops! the account you entered does not exist'.red.bold
      end
    end
  else
    puts 'Error: Invalid choice'.red.bold
  end
end
puts 'Good bye! see you soon.'.green
