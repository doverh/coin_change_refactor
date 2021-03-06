require "minitest/autorun"
require_relative "coin_change.rb"

class TestCoinChange < Minitest::Test

	def test_insert_0_return_zero
		assert_equal({:quarter=>0,:dime=>0,:nickel=>0,:penny=>0},coin_changer(0.00))
	end


	def test_insert_1_return_penny
		assert_equal({:quarter=>0,:dime=>0, :nickel=>0,:penny=>1},coin_changer(0.01))
	end

	def test_insert_2_return_penny_2
		assert_equal({:quarter=>0,:dime=>0, :nickel=>0,:penny=>2},coin_changer(0.02))
	end

	def test_insert_5_return_nickel_1
		assert_equal({:quarter=>0,:dime=>0, :nickel=>1,:penny=>0},coin_changer(0.05))
	end

	def test_insert_6_return_nickel_1_penny_1
		assert_equal({:quarter=>0,:dime=>0,:nickel=>1,:penny=>1},coin_changer(0.06))
	end

	def test_insert_10_return_dimme_1
		assert_equal({:quarter=>0,:dime=>1,:nickel=>0,:penny=>0},coin_changer(0.10))
	end

	def test_insert_13_return_dimme_1_penny_3
		assert_equal({:quarter=>0,:dime=>1,:nickel=>0,:penny=>3},coin_changer(0.13))
	end


	def test_insert_15_return_dimme_1_nickel_1
		assert_equal({:quarter=>0,:dime=>1,:nickel=>1,:penny=>0},coin_changer(0.15))
	end

	def test_insert_19_return_dimme_1_nickel_1_penny_4
		assert_equal({:quarter=>0,:dime=>1,:nickel=>1,:penny=>4},coin_changer(0.19))
	end

	def test_insert_20_return_dimme_2
		assert_equal({:quarter=>0,:dime=>2,:nickel=>0,:penny=>0},coin_changer(0.20))
	end

	def test_insert_25_return_quarter_1
		assert_equal({:quarter=>1,:dime=>0,:nickel=>0,:penny=>0},coin_changer(0.25))
	end



end