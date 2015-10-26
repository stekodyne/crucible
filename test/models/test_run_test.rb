require_relative '../test_helper'

class TestRunTest < ActiveSupport::TestCase

  def setup
    dump_database
    @conformance_xml = File.read(Rails.root.join('test','fixtures','xml','conformance', 'bonfire_conformance.xml'))
  end

  def test_add_test

    server = Server.new ({url: 'www.example.com'})
    testrun = TestRun.new({server: server})
    
    assert_equal 0, testrun.tests.length
    assert_equal "pending", testrun.status

    tests = Test.all().limit(3)

    #add a single test
    testrun.add_tests(tests[0])

    assert_equal 1, testrun.tests.length

    #add multiple test
    testrun.add_tests(tests[1..2])

    assert_equal 3, testrun.tests.length

  end

  def test_execute_success

    server = Server.new ({url: 'www.example.com'})
    testrun = TestRun.new({server: server})

    stub_request(:any, /www\.example\.com\/.*/).to_return(status: 404)
    stub_request(:get, "www.example.com/metadata").to_return(body: @conformance_xml).times(1)

    testrun.add_tests(Test.all().limit(3))
    assert testrun.execute()

    assert_equal "finished", testrun.status

    assert_equal 3, testrun.test_results.length

    # assert_equal testrun.server.percent_passing, 0
    refute_nil  testrun.server.summary

    #don't allow it to be run again
    refute testrun.execute()

  end

  def test_execute_unavailable

    server = Server.new ({url: 'www.example.com'})
    testrun = TestRun.new({server: server})

    stub_request(:any, /www\.example\.com\/.*/).to_return(status: 404)
    stub_request(:get, "www.example.com/metadata").to_return(status: 500)
    
    testrun.add_tests(Test.first())
    refute testrun.execute()

    assert_equal "unavailable", testrun.status

  end

  def test_execute_error

    server = Server.new ({url: 'www.example.com'})
    testrun = TestRun.new({server: server})

    stub_request(:any, /www\.example\.com\/.*/).to_timeout.times(1)
    stub_request(:get, "www.example.com/metadata").to_return(body: @conformance_xml).times(1)

    testrun.add_tests(Test.all().limit(3))

    refute testrun.execute()

    assert_equal "error", testrun.status

    assert_equal 0, testrun.test_results.length

  end

end
