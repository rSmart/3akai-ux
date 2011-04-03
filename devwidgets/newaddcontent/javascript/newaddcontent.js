/*
 * Licensed to the Sakai Foundation (SF) under one
 * or more contributor license agreements. See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership. The SF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 */

/*
 * Dependencies
 *
 * /dev/lib/misc/trimpath.template.js (TrimpathTemplates)
 * /dev/lib/jquery/plugins/jqmodal.sakai-edited.js
 */

/*global $ */

require(["jquery", "sakai/sakai.api.core"], function($, sakai) {

    /**
     * @name sakai_global.newaddcontent
     *
     * @class newaddcontent
     *
     * @description
     * Initialize the add content widget - This widget adds content to a site
     *
     * @version 0.0.1
     * @param {String} tuid Unique id of the widget
     * @param {Boolean} showSettings Show the settings of the widget or not
     */
    sakai_global.newaddcontent = function(tuid, showSettings){


        /////////////////////////////
        // CONFIGURATION VARIABLES //
        /////////////////////////////

        // Containers
        var newaddcontentContainer = "#newaddcontent_container";

        // Elements
        var newaddcontentContainerLHChoiceItem = ".newaddcontent_container_lhchoice_item";
        var newaddcontentContainerNewItem = "#newaddcontent_container_newitem";

        // Classes
        var newaddcontentContainerLHChoiceSelectedItem = "newaddcontent_container_lhchoice_selected_item";
        var newaddcontentContainerLHChoiceItemClass = "newaddcontent_container_lhchoice_item";
        var newaddcontentContainerNewItemExtraRoundedBorder = "newaddcontent_container_newitem_extraroundedborder";

        ////////////////////
        // INITIALIZATION //
        ////////////////////

        var initializeJQM = function(){
            var $newaddcontentContainer = $(newaddcontentContainer);
            $(newaddcontentContainer).jqm({
                modal: true,
                overlay: 20,
                toTop: true
            });

            // position dialog box at users scroll position
            var htmlScrollPos = $("html").scrollTop();
            var docScrollPos = $(document).scrollTop();
            if (htmlScrollPos > 0) {
                $newaddcontentContainer.css({
                    "top": htmlScrollPos + 100 + "px"
                });
            }
            else if (docScrollPos > 0) {
                $newaddcontentContainer.css({
                    "top": docScrollPos + 100 + "px"
                });
            }

            $(newaddcontentContainer).jqmShow();
        };

        var renderInterface = function(){

        };

        var addBinding = function(){
            $(newaddcontentContainerLHChoiceItem).bind("click", function(){
                if($(this).prev().hasClass(newaddcontentContainerLHChoiceItemClass)){
                    $(newaddcontentContainerNewItem).addClass(newaddcontentContainerNewItemExtraRoundedBorder);
                }else{
                    $(newaddcontentContainerNewItem).removeClass(newaddcontentContainerNewItemExtraRoundedBorder);
                }
                $(newaddcontentContainerLHChoiceItem).removeClass(newaddcontentContainerLHChoiceSelectedItem);
                $(this).addClass(newaddcontentContainerLHChoiceSelectedItem);
            });
        };

        var initialize = function(data){
            initializeJQM();
            renderInterface();
            addBinding();
        };


        ////////////
        // EVENTS //
        ////////////

        $(window).bind("init.newaddcontent.sakai", function(e, data) {
            initialize();
        });

    };
    sakai.api.Widgets.widgetLoader.informOnLoad("newaddcontent");
});