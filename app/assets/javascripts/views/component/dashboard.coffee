$(window).on('load', ->
  new Crucible.Dashboard()
)

class Crucible.Dashboard

  servers: [{"name": 'Argonaut Reference Server', "results" : [{"test_name": 'test1', "test_result" : 'green'},
                          {"test_name": 'test2', "test_result" : 'green'},
                          {"test_name": 'test3', "test_result" : 'red'},
                          {"test_name": 'test4', "test_result" : 'red'},
                          {"test_name": 'test5', "test_result" : 'red'},
                          {"test_name": 'test6', "test_result" : 'red'},
                          {"test_name": 'test7', "test_result" : 'green'},
                          {"test_name": 'test8', "test_result" : 'green'},
                          {"test_name": 'test9', "test_result" : 'green'},
                          {"test_name": 'test10', "test_result" : 'red'}]},
            {"name":'Smart Reference Server', "results" : [{"test_name": 'test1', "test_result" : 'green'},
                          {"test_name": 'test2', "test_result" : 'green'},
                          {"test_name": 'test3', "test_result" : 'red'},
                          {"test_name": 'test4', "test_result" : 'red'},
                          {"test_name": 'test5', "test_result" : 'red'},
                          {"test_name": 'test6', "test_result" : 'red'},
                          {"test_name": 'test7', "test_result" : 'green'},
                          {"test_name": 'test8', "test_result" : 'green'},
                          {"test_name": 'test9', "test_result" : 'green'},
                          {"test_name": 'test10', "test_result" : 'red'}]},
            {"name":'Epic', "results" : [{"test_name": 'test1', "test_result" : 'green'},
                          {"test_name": 'test2', "test_result" : 'green'},
                          {"test_name": 'test3', "test_result" : 'red'},
                          {"test_name": 'test4', "test_result" : 'red'},
                          {"test_name": 'test5', "test_result" : 'red'},
                          {"test_name": 'test6', "test_result" : 'red'},
                          {"test_name": 'test7', "test_result" : 'green'},
                          {"test_name": 'test8', "test_result" : 'green'},
                          {"test_name": 'test9', "test_result" : 'green'},
                          {"test_name": 'test10', "test_result" : 'red'}]},
            {"name":'The Advisory Board Company', "results" : [{"test_name": 'test1', "test_result" : 'green'},
                          {"test_name": 'test2', "test_result" : 'green'},
                          {"test_name": 'test3', "test_result" : 'red'},
                          {"test_name": 'test4', "test_result" : 'red'},
                          {"test_name": 'test5', "test_result" : 'red'},
                          {"test_name": 'test6', "test_result" : 'red'},
                          {"test_name": 'test7', "test_result" : 'green'},
                          {"test_name": 'test8', "test_result" : 'green'},
                          {"test_name": 'test9', "test_result" : 'green'},
                          {"test_name": 'test10', "test_result" : 'red'}]},
            {"name":'RelayHealth', "results" : [{"test_name": 'test1', "test_result" : 'green'},
                          {"test_name": 'test2', "test_result" : 'green'},
                          {"test_name": 'test3', "test_result" : 'red'},
                          {"test_name": 'test4', "test_result" : 'red'},
                          {"test_name": 'test5', "test_result" : 'red'},
                          {"test_name": 'test6', "test_result" : 'red'},
                          {"test_name": 'test7', "test_result" : 'green'},
                          {"test_name": 'test8', "test_result" : 'green'},
                          {"test_name": 'test9', "test_result" : 'green'},
                          {"test_name": 'test10', "test_result" : 'red'}]},
            {"name":'AEGIS.net, Inc.', "results" : [{"test_name": 'test1', "test_result" : 'green'},
                          {"test_name": 'test2', "test_result" : 'green'},
                          {"test_name": 'test3', "test_result" : 'red'},
                          {"test_name": 'test4', "test_result" : 'red'},
                          {"test_name": 'test5', "test_result" : 'red'},
                          {"test_name": 'test6', "test_result" : 'red'},
                          {"test_name": 'test7', "test_result" : 'green'},
                          {"test_name": 'test8', "test_result" : 'green'},
                          {"test_name": 'test9', "test_result" : 'green'},
                          {"test_name": 'test10', "test_result" : 'red'}]},
            {"name":'Cerner', "results" : [{"test_name": 'test1', "test_result" : 'green'},
                          {"test_name": 'test2', "test_result" : 'green'},
                          {"test_name": 'test3', "test_result" : 'red'},
                          {"test_name": 'test4', "test_result" : 'red'},
                          {"test_name": 'test5', "test_result" : 'red'},
                          {"test_name": 'test6', "test_result" : 'red'},
                          {"test_name": 'test7', "test_result" : 'green'},
                          {"test_name": 'test8', "test_result" : 'green'},
                          {"test_name": 'test9', "test_result" : 'green'},
                          {"test_name": 'test10', "test_result" : 'red'}]},
            {"name":'HackensackUMC', "results" : [{"test_name": 'test1', "test_result" : 'green'},
                          {"test_name": 'test2', "test_result" : 'green'},
                          {"test_name": 'test3', "test_result" : 'red'},
                          {"test_name": 'test4', "test_result" : 'red'},
                          {"test_name": 'test5', "test_result" : 'red'},
                          {"test_name": 'test6', "test_result" : 'red'},
                          {"test_name": 'test7', "test_result" : 'green'},
                          {"test_name": 'test8', "test_result" : 'green'},
                          {"test_name": 'test9', "test_result" : 'green'},
                          {"test_name": 'test10', "test_result" : 'red'}]},
            {"name":'UC Santa Cruz', "results" : [{"test_name": 'test1', "test_result" : 'green'},
                          {"test_name": 'test2', "test_result" : 'green'},
                          {"test_name": 'test3', "test_result" : 'red'},
                          {"test_name": 'test4', "test_result" : 'red'},
                          {"test_name": 'test5', "test_result" : 'red'},
                          {"test_name": 'test6', "test_result" : 'red'},
                          {"test_name": 'test7', "test_result" : 'green'},
                          {"test_name": 'test8', "test_result" : 'green'},
                          {"test_name": 'test9', "test_result" : 'green'},
                          {"test_name": 'test10', "test_result" : 'red'}]},
            {"name":'NavHealth', "results" : [{"test_name": 'test1', "test_result" : 'green'},
                          {"test_name": 'test2', "test_result" : 'green'},
                          {"test_name": 'test3', "test_result" : 'red'},
                          {"test_name": 'test4', "test_result" : 'red'},
                          {"test_name": 'test5', "test_result" : 'red'},
                          {"test_name": 'test6', "test_result" : 'red'},
                          {"test_name": 'test7', "test_result" : 'green'},
                          {"test_name": 'test8', "test_result" : 'green'},
                          {"test_name": 'test9', "test_result" : 'green'},
                          {"test_name": 'test10', "test_result" : 'red'}]},
            {"name":'The Sequoia Project', "results" : [{"test_name": 'test1', "test_result" : 'green'},
                          {"test_name": 'test2', "test_result" : 'green'},
                          {"test_name": 'test3', "test_result" : 'red'},
                          {"test_name": 'test4', "test_result" : 'red'},
                          {"test_name": 'test5', "test_result" : 'red'},
                          {"test_name": 'test6', "test_result" : 'red'},
                          {"test_name": 'test7', "test_result" : 'green'},
                          {"test_name": 'test8', "test_result" : 'green'},
                          {"test_name": 'test9', "test_result" : 'green'},
                          {"test_name": 'test10', "test_result" : 'red'}]},
            {"name":'Health Samurai/Aidbox', "results" : [{"test_name": 'test1', "test_result" : 'green'},
                          {"test_name": 'test2', "test_result" : 'green'},
                          {"test_name": 'test3', "test_result" : 'red'},
                          {"test_name": 'test4', "test_result" : 'red'},
                          {"test_name": 'test5', "test_result" : 'red'},
                          {"test_name": 'test6', "test_result" : 'red'},
                          {"test_name": 'test7', "test_result" : 'green'},
                          {"test_name": 'test8', "test_result" : 'green'},
                          {"test_name": 'test9', "test_result" : 'green'},
                          {"test_name": 'test10', "test_result" : 'red'}]},
            {"name":'InterSystems Corporation', "results" : [{"test_name": 'test1', "test_result" : 'green'},
                          {"test_name": 'test2', "test_result" : 'green'},
                          {"test_name": 'test3', "test_result" : 'red'},
                          {"test_name": 'test4', "test_result" : 'red'},
                          {"test_name": 'test5', "test_result" : 'red'},
                          {"test_name": 'test6', "test_result" : 'red'},
                          {"test_name": 'test7', "test_result" : 'green'},
                          {"test_name": 'test8', "test_result" : 'green'},
                          {"test_name": 'test9', "test_result" : 'green'},
                          {"test_name": 'test10', "test_result" : 'red'}]},
            {"name":'Allscripts', "results" : [{"test_name": 'test1', "test_result" : 'green'},
                          {"test_name": 'test2', "test_result" : 'green'},
                          {"test_name": 'test3', "test_result" : 'red'},
                          {"test_name": 'test4', "test_result" : 'red'},
                          {"test_name": 'test5', "test_result" : 'red'},
                          {"test_name": 'test6', "test_result" : 'red'},
                          {"test_name": 'test7', "test_result" : 'green'},
                          {"test_name": 'test8', "test_result" : 'green'},
                          {"test_name": 'test9', "test_result" : 'green'},
                          {"test_name": 'test10', "test_result" : 'red'}]},
            {"name":'ONC', "results" : [{"test_name": 'test1', "test_result" : 'green'},
                          {"test_name": 'test2', "test_result" : 'green'},
                          {"test_name": 'test3', "test_result" : 'red'},
                          {"test_name": 'test4', "test_result" : 'red'},
                          {"test_name": 'test5', "test_result" : 'red'},
                          {"test_name": 'test6', "test_result" : 'red'},
                          {"test_name": 'test7', "test_result" : 'green'},
                          {"test_name": 'test8', "test_result" : 'green'},
                          {"test_name": 'test9', "test_result" : 'green'},
                          {"test_name": 'test10', "test_result" : 'red'}]},
            {"name":'MEDITECH', "results" : [{"test_name": 'test1', "test_result" : 'green'},
                          {"test_name": 'test2', "test_result" : 'green'},
                          {"test_name": 'test3', "test_result" : 'red'},
                          {"test_name": 'test4', "test_result" : 'red'},
                          {"test_name": 'test5', "test_result" : 'red'},
                          {"test_name": 'test6', "test_result" : 'red'},
                          {"test_name": 'test7', "test_result" : 'green'},
                          {"test_name": 'test8', "test_result" : 'green'},
                          {"test_name": 'test9', "test_result" : 'green'},
                          {"test_name": 'test10', "test_result" : 'red'}]},
            {"name":'Applied Informatics', "results" : [{"test_name": 'test1', "test_result" : 'green'},
                          {"test_name": 'test2', "test_result" : 'green'},
                          {"test_name": 'test3', "test_result" : 'red'},
                          {"test_name": 'test4', "test_result" : 'red'},
                          {"test_name": 'test5', "test_result" : 'red'},
                          {"test_name": 'test6', "test_result" : 'red'},
                          {"test_name": 'test7', "test_result" : 'green'},
                          {"test_name": 'test8', "test_result" : 'green'},
                          {"test_name": 'test9', "test_result" : 'green'},
                          {"test_name": 'test10', "test_result" : 'red'}]},
            {"name":'Personal Medicine Plus', "results" : [{"test_name": 'test1', "test_result" : 'green'},
                          {"test_name": 'test2', "test_result" : 'green'},
                          {"test_name": 'test3', "test_result" : 'red'},
                          {"test_name": 'test4', "test_result" : 'red'},
                          {"test_name": 'test5', "test_result" : 'red'},
                          {"test_name": 'test6', "test_result" : 'red'},
                          {"test_name": 'test7', "test_result" : 'green'},
                          {"test_name": 'test8', "test_result" : 'green'},
                          {"test_name": 'test9', "test_result" : 'green'},
                          {"test_name": 'test10', "test_result" : 'red'}]},
            {"name":'HackensackUMC', "results" : [{"test_name": 'test1', "test_result" : 'green'},
                          {"test_name": 'test2', "test_result" : 'green'},
                          {"test_name": 'test3', "test_result" : 'red'},
                          {"test_name": 'test4', "test_result" : 'red'},
                          {"test_name": 'test5', "test_result" : 'red'},
                          {"test_name": 'test6', "test_result" : 'red'},
                          {"test_name": 'test7', "test_result" : 'green'},
                          {"test_name": 'test8', "test_result" : 'green'},
                          {"test_name": 'test9', "test_result" : 'green'},
                          {"test_name": 'test10', "test_result" : 'red'}]},
            {"name":'GLIMPSE', "results" : [{"test_name": 'test1', "test_result" : 'green'},
                          {"test_name": 'test2', "test_result" : 'green'},
                          {"test_name": 'test3', "test_result" : 'red'},
                          {"test_name": 'test4', "test_result" : 'red'},
                          {"test_name": 'test5', "test_result" : 'red'},
                          {"test_name": 'test6', "test_result" : 'red'},
                          {"test_name": 'test7', "test_result" : 'green'},
                          {"test_name": 'test8', "test_result" : 'green'},
                          {"test_name": 'test9', "test_result" : 'green'},
                          {"test_name": 'test10', "test_result" : 'red'}]}]

  rectData: [{"test_name": 'test1', "test_result" : 'green'},
             {"test_name": 'test2', "test_result" : 'green'},
             {"test_name": 'test3', "test_result" : 'red'},
             {"test_name": 'test4', "test_result" : 'red'},
             {"test_name": 'test5', "test_result" : 'red'},
             {"test_name": 'test6', "test_result" : 'red'},
             {"test_name": 'test7', "test_result" : 'green'},
             {"test_name": 'test8', "test_result" : 'green'},
             {"test_name": 'test9', "test_result" : 'green'},
             {"test_name": 'test10', "test_result" : 'red'}]

  templates:
    serverResultsRow: 'views/templates/dashboards/server_result_row'

  constructor: ->
    @element = $('.dashboard-element')
    @renderServerResults()

  renderServerResults: =>
    dashboardBody = d3.select('.dashboard-body > div')
    $(@servers).each (i, server) =>
      newTempl = HandlebarsTemplates[@templates.serverResultsRow]({server: server})
      $('.dashboard-body > div').append(newTempl)
    dashboardBody.selectAll("rect").data(@rectData).enter()
    debugger