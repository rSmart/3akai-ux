<%@ page session="false" %>
<%
response.setStatus(404);
%><!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <!-- Sakai 3 R&amp;D - Page not found -->
        <title></title>

        <!-- Sakai Core CSS -->
        <link rel="stylesheet" type="text/css" href="/dev/css/sakai/main.css" />
        <link rel="stylesheet" type="text/css" href="/dev/css/sakai/sakai.corev1.css" />

        <!-- Sakai Error CSS -->
        <link rel="stylesheet" type="text/css" href="/dev/css/sakai/sakai.error.css" />

    </head>

    <body class="fl-centered error404 i18nable">

        <!-- HEADER -->
        <div class="fl-container-flex header s3d-header">
            <div class="s3d-navigation-container">
                <div id="widget_topnavigation" class="widget_inline"></div>
            </div>
            <div class="fl-fix fl-centered fixed-container s3d-fixed-container">
                <div class="s3d-container-shadow-left"><!----></div>
                <div class="s3d-container-shadow-right"><!----></div>
                <div class="s3d-page-header">
                    <div id="widget_institutionalskinning" class="widget_inline"></div>
                </div>
            </div>
        </div>
        <div class="fl-fix fl-centered fixed-container s3d-main-container">
            <div id="error_content">
                <div id="error_content_second_column">
                    <div class="error_content_second_column_box">
                        <div class="s3d-contentpage-title">__MSG__ARE_YOU_LOOKING_FOR__</div>
                        <div id="error_content_second_column_box_container">
                            <div class="error_content_second_column_box_item_container">
                                <div class="error_content_second_column_box_item_content">
                                    <a class="s3d-regular-links s3d-bold" href="/search#l=content">__MSG__CONTENT__</a>
                                </div>
                            </div>
                            <hr class="s3d-split-line fl-push" />
                            <div class="error_content_second_column_box_item_container">
                                <div class="error_content_second_column_box_item_content">
                                    <a class="s3d-regular-links s3d-bold" href="/search#l=people">__MSG__PEOPLE__</a>
                                </div>
                            </div>
                            <hr class="s3d-split-line fl-push" />
                            <div id="error_second_column_links_template" style="display:none"><!--
                            {for w in worlds}
                                <div class="error_content_second_column_box_item_container">
                                    <div class="error_content_second_column_box_item_content">
                                        <a class="s3d-regular-links s3d-bold" href="/search#l=\${w.id}">\${w.label}</a>
                                    </div>
                                </div>
                                {if !w.last}
                                    <hr class="s3d-split-line fl-push" />
                                {/if}
                            {/for}
                            <div class="error_content_second_column_box_footer"></div>
                            --></div>
                     </div>
                    </div>

                    <div class="error_content_second_column_box browse_cats">
                        <div class="s3d-contentpage-title">__MSG__BROWSE_CATEGORIES__</div>
                        <div id="error_content_second_column_box_browse_container">
                            <div class="error_content_second_column_box_item_container">
                                <div class="error_content_second_column_box_item_content">
                                    <p>__MSG__YOU_CAN_BROWSE_THIS_INSTITUTION__ <a href="/categories"><span class="error_browse_cats"><span id="error_browse_category_number">0</span> __MSG__CATEGORIES_LC__</span></a> __MSG__WHERE_YOU_CAN_CONNECT_WITH_PEOPLE_VIEW_COURSE_DETAILS_SEARCH_FOR_CONTENT_AND_JOIN_GROUPS__</p>
                                </div>
                            </div>
                         <div class="error_content_second_column_box_footer">
                            <a href="/categories" id="error_browse_categories_button">
                                <button class="s3d-button s3d-overlay-button">__MSG__BROWSE_CATEGORIES__</button>
                            </a>
                         </div>
                        </div>
                    </div>
                </div>
                <div id="error_content_first_column">
                    <img src="/dev/images/404_sinking.png" alt="__MSG__THE_PAGE_YOU_REQUESTED_WAS_NOT_FOUND__" />
                    <div id="error_content_first_column_content">
                        <h1>__MSG__THE_PAGE_YOU_REQUESTED_WAS_NOT_FOUND__</h1>
                        <h3 class="first">__MSG__POSSIBLE_REASONS_FOR_THE_PAGE_NOT_BEING_FOUND__</h3>
                        <div id="page_not_found_error"></div>
                        <div id="page_not_found_error_logged_out_template" style="display:none;"><!--
                            <ol>
                                <li>__MSG__LINKED_FROM_AN_OUTDATED_BOOKMARK__</li>
                                <li>__MSG__A_MISTYPED_ADDRESS_URL_WAS_ENTERED__</li>
                                <li>__MSG__AN_INCORRECT_LINK_WAS_FOLLOWED_FROM_SOMEWHERE__</li>
                                <li>__MSG__YOU_MAY_NOT_HAVE_ACCESS_TO_VIEW_THE_PAGE_LOGGED_OUT__. <button id="signin_from_content" class="s3d-link-button topnavigation_trigger_login">__MSG__SIGN_IN__</button> __MSG__AND_TRY_AGAIN__</li>
                            </ol>
                        --></div>
                        <div id="page_not_found_error_logged_in_template" style="display:none;"><!--
                            <ol>
                                <li>__MSG__LINKED_FROM_AN_OUTDATED_BOOKMARK__</li>
                                <li>__MSG__A_MISTYPED_ADDRESS_URL_WAS_ENTERED__</li>
                                <li>__MSG__AN_INCORRECT_LINK_WAS_FOLLOWED_FROM_SOMEWHERE__</li>
                                <li>__MSG__YOU_MAY_NOT_HAVE_ACCESS_TO_VIEW_THE_PAGE_LOGGED_IN__</li>
                            </ol>
                        --></div>
                        <h3>__MSG__WHAT_TO_DO_NOW_HERE_ARE_SOME_SUGGESTIONS__</h3>
                        <div class="s3d-search-container">
                            <input type="text" tabindex_none="40" id="errorsearch_text" title="__MSG__SEARCH_FOR__" class="s3d-search-inputfield" maxlength="255"/>
                            <button type="button" class="s3d-button s3d-overlay-button s3d-search-button">
                                <img src="/dev/images/search_icon.png" alt="__MSG__SEARCH_FOR__"/>
                            </button>
                        </div>

                        <div id="error_page_links_container"></div>
                        <div id="error_page_links_template" style="display:none"><!--
                            <ul>
                                {for w in links.whatToDo}
                                    <li><a class="s3d-regular-links s3d-bold" href="\${w.url}">\${sakai.api.i18n.getValueForKey(w.title)}</a></li>
                                {/for}
                                <li><a href="{if document.referrer === ""}/{else}\${document.referrer}{/if}" class="s3d-regular-links s3d-bold">__MSG__GO_BACK_BY_USING_YOUR_BROWSER_BACK_BUTTON__</a></li>
                            </ul>

                            <h3>__MSG__GET_IN_TOUCH__</h3>
                            <ul>
                                <li><a id="feedback" class="s3d-regular-links s3d-bold" href="javascript:;">__MSG__SEND_US_YOUR_FEEDBACK__</a></li>
                            </ul>
                        --></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- FOOTER WIDGET -->
        <div id="widget_footer" class="widget_inline footercontainer"></div>

        <!-- Dependency JS -->
        <script data-main="/dev/lib/sakai/sakai.dependencies.js" src="/dev/lib/jquery/require.js"></script>

        <!-- 404 JS -->
        <script>require(["/dev/javascript/sakai.404.js"]);</script>
        <script type="text/javascript" charset="utf-8">
          var is_ssl = ("https:" == document.location.protocol);
          var asset_host = is_ssl ? "https://s3.amazonaws.com/getsatisfaction.com/" : "http://s3.amazonaws.com/getsatisfaction.com/";
          document.write(unescape("%3Cscript src='" + asset_host + "javascripts/feedback-v2.js' type='text/javascript'%3E%3C/script%3E"));
        </script>
        <script type="text/javascript" charset="utf-8">
          var feedback_widget_options = {};
          feedback_widget_options.display = "overlay";
          feedback_widget_options.company = "rsmart";
          feedback_widget_options.placement = "hidden";
          feedback_widget_options.color = "#AFBC36";
          feedback_widget_options.style = "question";
          feedback_widget_options.product = "rsmart_rsmart_academic";
          feedback_widget_options.limit = "5";
          var feedback_widget = new GSFN.feedback_widget(feedback_widget_options);
          require(
              {
                  baseUrl:"/dev/lib/",
                  paths: {
                      "jquery": "jquery/jquery-1.7.0"
                  }
              }
          );
          require(["jquery"], function($) {
        	  $(document).on("click", "#feedback, #help_tab", function(e) {
                  feedback_widget.show();
                  e.preventDefault();
        	  });
        	  $(document).on("click", "#fdbk_close", function(e) {
                  feedback_widget.hide();
                  e.preventDefault();
              });
          });
        </script>
    </body>
</html>
