Feature tests for setting up a new Oystercard.

New oystercard
 2.6.0 :001 > require './lib/oystercard'
  => true
 2.6.0 :002 > card = Oystercard.new
  => <Oystercard:0x00007fdeb58b05b0 @balance=0>

Card has a default balance of 0
 2.6.0 :001 > require './lib/oystercard'
  => true
 2.6.0 :002 > card = Oystercard.new
  => <Oystercard:0x00007fefc6072ed0 @balance=0>
 2.6.0 :003 > card.balance
  => 0


Provide maximum balance
 2.6.0 :001 > require './lib/oystercard'
  => true
 2.6.0 :002 > card = Oystercard.new
  => <Oystercard:0x00007fdeb58b05b0 @balance=0>
 2.6.0 :003 > card.top_up(90)
  => 90
 2.6.0 :004 > card.top_up(1)
 Traceback (most recent call last):
         5: from /Users/yems/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
         4: from /Users/yems/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
         3: from /Users/yems/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
         2: from (irb):4
         1: from /Users/yems/Projects/oystercard_challenge/lib/oystercard.rb:11:in `top_up'
 RuntimeError (Card violation: cannot exceed £90)


Feature test for #deduct
 2.6.0 :001 > require './lib/oystercard'
  => true
 2.6.0 :002 > card = Oystercard.new
  => <Oystercard:0x00007fd9b18fafd8 @balance=0>
 2.6.0 :003 > card.top_up(10)
  => 10
 2.6.0 :004 > card.balance
  => 10
 2.6.0 :005 > card.deduct(2)
  => 8


To use for feature testing:
irb
require './lib/oystercard'
card = Oystercard.new
card.top_up(10)
card.balance
card.deduct(2)


User Story Chapter 8

In order to get through the barriers.
As a customer
I need to touch in and out.

Object | Message

card   | touch_in
       | touch_out
       | in_journey?

User Story Chapter 8

In order to get through the barriers.
As a customer
I need to touch in and out.

Object | Message

card   | touch_in
       | touch_out
       | in_journey?

RED



2.6.0 :001 > require './lib/oystercard'
 => true
2.6.0 :002 > card = Oystercard.new
 => #<Oystercard:0x00007ff73d1b22b8 @balance=0>
2.6.0 :003 > card.touch_in
Traceback (most recent call last):
        4: from /Users/yems/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        3: from /Users/yems/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        2: from /Users/yems/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        1: from (irb):3
NoMethodError (undefined method `touch_in' for #<Oystercard:0x00007ff73d1b22b8 @balance=0>)
2.6.0 :004 > card.touch_out
Traceback (most recent call last):
        5: from /Users/yems/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        4: from /Users/yems/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        3: from /Users/yems/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        2: from (irb):4
        1: from (irb):4:in `rescue in irb_binding'
NoMethodError (undefined method `touch_out' for #<Oystercard:0x00007ff73d1b22b8 @balance=0>)

GREEN

002 > card = Oystercard.new
 => #<Oystercard:0x00007fd81698bf70 @balance=0>
2.6.0 :003 > card.top_up(10)
 => 10
2.6.0 :004 > card.touch_in
 => nil
2.6.0 :005 > card.touch_out
 => nil
2.6.0 :006 > card.in_journey?
 => false
2.6.0 :007 > card.touch_in
 => nil
2.6.0 :008 > card.touch_in
