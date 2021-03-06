#!/bin/bash ../test_wrapper.sh

require_relative './lib_test_base'

class IdSplitterTest < LibTestBase

  include IdSplitter

  test '80DE81',
  'outer(id) is first 2 chars of id in uppercase' do
    assert_equal 'A7', outer('a73457AD02')
  end

  test '0E7FC6',
  'inner(id) is last 8 chars of id in uppercase' do
    assert_equal '3457ADF2', inner('a73457ADf2')
  end

end
