#pragma checksum "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "a4ffb9cf18d3eccc7d09c5302d8d4e7aa47a4f02"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Blog_Details), @"mvc.1.0.view", @"/Views/Blog/Details.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\_ViewImports.cshtml"
using Consol_Project_DirectList;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\_ViewImports.cshtml"
using Consol_Project_DirectList.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\_ViewImports.cshtml"
using Consol_Project_DirectList.ViewModels;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\_ViewImports.cshtml"
using Consol_Project_DirectList.Data;

#line default
#line hidden
#nullable disable
#nullable restore
#line 5 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\_ViewImports.cshtml"
using Microsoft.AspNetCore.Identity;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"a4ffb9cf18d3eccc7d09c5302d8d4e7aa47a4f02", @"/Views/Blog/Details.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"a506c3ed1a6c1584acf9c8c6fade0c7893e241b6", @"/Views/_ViewImports.cshtml")]
    public class Views_Blog_Details : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<VmBlog>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("name", "_BannerPartial", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("post-img img-fluid"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("alt", new global::Microsoft.AspNetCore.Html.HtmlString("image"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/assets/images/thumb-4.jpg"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_4 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("img-fluid rounded-circle shadow-lg"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_5 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/assets/images/thumb-1.jpg"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_6 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/assets/images/thumb-2.jpg"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_7 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/assets/images/thumb-3.jpg"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_8 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("id", new global::Microsoft.AspNetCore.Html.HtmlString("add-comment"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_9 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("add-comment"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_10 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Blog", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_11 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Details", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.PartialTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper;
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 3 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml"
  
    ViewData["Title"] = "BlogDetails Details ";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n    <section class=\"main-wrapper\">\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("partial", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "a4ffb9cf18d3eccc7d09c5302d8d4e7aa47a4f028891", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.PartialTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper.Name = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
#nullable restore
#line 8 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper.Model = Model.Banner;

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("model", __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper.Model, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(@"
        <!-- Content -->
        <div class=""content"">
            <div class=""container"">
                <!-- Blog Posts -->
                <div class=""blog-page"">
                    <div class=""row"">
                        <!-- Post Content -->
                        <div class=""col-lg-9 col-md-8 padding-right-30"">
                            <!-- Blog Post -->
                            <div class=""blog-post single-post"">
                                <!-- Img -->
                                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagOnly, "a4ffb9cf18d3eccc7d09c5302d8d4e7aa47a4f0211023", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
            BeginAddHtmlAttributeValues(__tagHelperExecutionContext, "src", 2, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            AddHtmlAttributeValue("", 735, "~/assets/images/", 735, 16, true);
#nullable restore
#line 20 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml"
AddHtmlAttributeValue("", 751, Model.Blogin.MainImage, 751, 23, false);

#line default
#line hidden
#nullable disable
            EndAddHtmlAttributeValues(__tagHelperExecutionContext);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                                <!-- Content -->\r\n                                <div class=\"post-content\">\r\n                                    <h3>");
#nullable restore
#line 23 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml"
                                   Write(Model.Blogin.Title);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h3>\r\n                                    <ul class=\"post-meta\">\r\n                                        <li>");
#nullable restore
#line 25 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml"
                                       Write(Model.Blogin.CreateDate.ToString("MMMM d, yyyy"));

#line default
#line hidden
#nullable disable
            WriteLiteral("</li>\r\n                                        <li><a>");
#nullable restore
#line 26 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml"
                                          Write(Model.Blogin.CustomUser.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("</a></li>\r\n                                        <li><a>");
#nullable restore
#line 27 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml"
                                          Write(Model.Blogin.Comment.Count);

#line default
#line hidden
#nullable disable
            WriteLiteral(@" Comments</a></li>
                                    </ul>
                                    <div class=""post-quote"">
                                        <span class=""icon""></span>
                                        <blockquote>
                                            ");
#nullable restore
#line 32 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml"
                                       Write(Model.Blogin.Text);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
                                        </blockquote>
                                    </div>
                                </div>
                            </div>
                            <!-- Blog Post / End -->
                            <!-- Post Navigation -->
                            <ul id=""posts-nav"" class=""margin-top-0 margin-bottom-45"">
                                <li class=""next-post"">
                                    <button class=""btn btn-1 btn-primary"" type=""button"">Next</button>
                                </li>
                                <li class=""prev-post"">
                                    <button class=""btn btn-1 btn-primary"" type=""button""> Previous</button>
                                </li>
                            </ul>
                            <!-- About Author -->
                            <div class=""about-author"">
                                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "a4ffb9cf18d3eccc7d09c5302d8d4e7aa47a4f0215831", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_3);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(@"
                                <div class=""about-description"">
                                    <h4>Ethan Moore</h4>
                                    <p>Nullam ultricies, velit ut varius molestie, ante metus condimentum nisi, dignissim facilisis turpis ex in libero. Sed porta ante tortor, a pulvinar mi facilisis nec. Proin finibus dolor ac convallis congue.</p>
                                </div>
                            </div>
                            <div class=""margin-top-50""></div>
                            <!-- Reviews -->
                            <section class=""comments"">
                                <h4 class=""headline margin-bottom-35"">Comments <span class=""comments-amount"">(5)</span></h4>
                                <div class=""row py-4 list-img-wrap"">
                                    <div class=""col-md-2 list-img"">");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagOnly, "a4ffb9cf18d3eccc7d09c5302d8d4e7aa47a4f0217836", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_4);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_5);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(@"</div>
                                    <div class=""col-md-10"">
                                        <h5 class=""text-primary""> Loreta Lavine </h5>
                                        <p>15 Minutes Ago</p>
                                        <p>
                                            Lorem Ipsum is simply dummy text of the pr make but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing
                                            Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                                        </p>
                                        <button class=""btn btn-sm btn-primary"" type=""button"">Reply</button>
                                    </div>
                                </div>
                                <div class=""row py-4 list-img-wrap"">
                         ");
            WriteLiteral("           <div class=\"col-md-2 list-img\">");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagOnly, "a4ffb9cf18d3eccc7d09c5302d8d4e7aa47a4f0220140", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_4);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_6);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(@"</div>
                                    <div class=""col-md-10"">
                                        <h5 class=""text-primary""> Kena Delatte </h5>
                                        <p>2 Days Ago</p>
                                        <p>Suspendisse enim nibh, ultricies id elit et, fermentum pellentesque neque. Curabitur at nibh finibus, facilisis lectus eu, ornare nulla. Morbi venenatis ex id diam laoreet vulputate</p>
                                        <button class=""btn btn-sm btn-primary"" type=""button"">Reply</button>
                                    </div>
                                </div>
                                <div class=""row py-4 list-img-wrap"">
                                    <div class=""col-md-2 list-img"">");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagOnly, "a4ffb9cf18d3eccc7d09c5302d8d4e7aa47a4f0222121", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_4);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_7);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(@"</div>
                                    <div class=""col-md-10"">
                                        <h5 class=""text-primary""> Hilda Oatman </h5>
                                        <p>3 Days Ago</p>
                                        <p>
                                            Proin rhoncus nulla dictum, volutpat sem sed, aliquam nisi. Sed lorem turpis, viverra eu lacinia id, pellentesque et mi. Quisque vitae tortor dui. Nullam ac eros tempus erat vulputate ultrices ac sed dui. Quisque
                                            malesuada lacus non est fringilla, vitae finibus magna rutrum.
                                        </p>
                                        <button class=""btn btn-sm btn-primary"" type=""button"">Reply</button>
                                    </div>
                                </div>
                            </section>
                            <div class=""clearfix""></div>
                            <!-- Add Comment -->
            ");
            WriteLiteral(@"                <div id=""add-review"" class=""add-review-box mt-4"">
                                <!-- Add Review -->
                                <h3 class=""listing-desc-headline mb-4"">Add Review</h3>
                                <!-- Review Comment -->
                                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "a4ffb9cf18d3eccc7d09c5302d8d4e7aa47a4f0224685", async() => {
                WriteLiteral(@"
                                    <fieldset>
                                        <div class=""row"">
                                            <div class=""col-md-6"">
                                                <div class=""form-group"">
                                                    <input type=""text"" placeholder=""Name"" class=""form-control form-control-alternative"">
                                                </div>
                                            </div>
                                            <div class=""col-md-6"">
                                                <div class=""form-group"">
                                                    <input type=""email"" placeholder=""Email"" class=""form-control form-control-alternative"">
                                                </div>
                                            </div>
                                            <div class=""col-md-12"">
                                                <div class=""form-gro");
                WriteLiteral(@"up"">
                                                    <input type=""text"" placeholder=""Subject"" class=""form-control form-control-alternative"">
                                                </div>
                                            </div>
                                        </div>
                                        <div");
                BeginWriteAttribute("class", " class=\"", 8333, "\"", 8341, 0);
                EndWriteAttribute();
                WriteLiteral(@">
                                            <div class=""form-group"">
                                                <textarea class=""form-control form-control-alternative"" placeholder=""Comment"" id=""exampleFormControlTextarea1"" rows=""3""></textarea>
                                            </div>
                                        </div>
                                    </fieldset>
                                    <button class=""mt-4 btn btn-primary"">Submit Comment</button>
                                    <div class=""clearfix""></div>
                                ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_8);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_9);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(@"
                            </div>
                            <!-- Add Review Box / End -->
                        </div>
                        <!-- Content / End -->
                        <!-- Widgets -->
                        <div class=""col-lg-3 col-md-4"">
                            <div class=""sidebar right"">
                                <!-- Widget -->
                                <div class=""widget"">
                                    <h3 class=""margin-top-0 margin-bottom-25"">Search Blog</h3>
                                    <div class=""form-group"">
                                        <div class=""input-group mb-4"">
                                            <div class=""input-group-prepend"">
                                                <span class=""input-group-text""><i class=""fa fa-search""></i></span>
                                            </div>
                                            <input class=""form-control"" placeholder=""Search"" type=""text"">
    ");
            WriteLiteral(@"                                    </div>
                                    </div>
                                </div>
                                <!-- Widget / End -->
                                <!-- Widget -->
                                <div class=""widget mb-4"">
                                    <h3>Popular Posts</h3>
                                    <ul class=""widget-tabs"">
                                        <!-- Post #1 -->
                                       
");
#nullable restore
#line 153 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml"
                                             foreach (var item in ViewBag.Blogin)
                                            {

#line default
#line hidden
#nullable disable
            WriteLiteral(@"                                                <li>
                                                    <div class=""widget-content"">
                                                        <div class=""widget-thumb"">
                                                            ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "a4ffb9cf18d3eccc7d09c5302d8d4e7aa47a4f0230513", async() => {
                WriteLiteral("<img");
                BeginWriteAttribute("src", " src=\"", 10968, "\"", 11004, 2);
                WriteAttributeValue("", 10974, "/assets/images/", 10974, 15, true);
#nullable restore
#line 158 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml"
WriteAttributeValue("", 10989, item.MainImage, 10989, 15, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(" alt=\"image\">");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_10.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_10);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_11.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_11);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-Id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#nullable restore
#line 158 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml"
                                                                                                            WriteLiteral(item.Id);

#line default
#line hidden
#nullable disable
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["Id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-Id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["Id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                                                        </div>\r\n                                                        <div class=\"widget-text\">\r\n                                                            <h5>");
#nullable restore
#line 161 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml"
                                                           Write(item.Title);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h5>\r\n                                                            <span>");
#nullable restore
#line 162 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml"
                                                             Write(item.CreateDate.ToString("MMMM dd yyyy"));

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</span>
                                                        </div>
                                                        <div class=""clearfix""></div>
                                                    </div>
                                                </li>
");
#nullable restore
#line 167 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml"
                                            }

#line default
#line hidden
#nullable disable
            WriteLiteral(@"                                    </ul>
                                </div>
                                <!-- Widget / End-->
                                <!-- Widget -->
                                <div class=""widget margin-top-40"">
                                    <h3 class=""margin-bottom-25"">Follow Us</h3>
                                    <div class="" btn-wrapper"">
");
#nullable restore
#line 175 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml"
                                         if (Model != null)
                                        {
                                            

#line default
#line hidden
#nullable disable
#nullable restore
#line 177 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml"
                                             foreach (var item in Model.Sosial)
                                            {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                                <a target=\"_blank\"");
            BeginWriteAttribute("href", " href=", 12378, "", 12394, 1);
#nullable restore
#line 179 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml"
WriteAttributeValue("", 12384, item.Link, 12384, 10, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            BeginWriteAttribute("class", " class=\"", 12394, "\"", 12460, 6);
            WriteAttributeValue("", 12402, "btn", 12402, 3, true);
            WriteAttributeValue(" ", 12405, "btn-neutral", 12406, 12, true);
#nullable restore
#line 179 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml"
WriteAttributeValue(" ", 12417, item.Color, 12418, 11, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue(" ", 12429, "btn-icon-only", 12430, 14, true);
            WriteAttributeValue(" ", 12443, "btn-round", 12444, 10, true);
            WriteAttributeValue(" ", 12453, "btn-lg", 12454, 7, true);
            EndWriteAttribute();
            WriteLiteral(" data-toggle=\"tooltip\" data-original-title=\"Follow us\">\r\n                                                    <i");
            BeginWriteAttribute("class", " class=\"", 12572, "\"", 12590, 1);
#nullable restore
#line 180 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml"
WriteAttributeValue("", 12580, item.Icon, 12580, 10, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral("></i>\r\n                                                </a>\r\n");
#nullable restore
#line 182 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml"
                                            }

#line default
#line hidden
#nullable disable
#nullable restore
#line 182 "C:\Users\ACER\source\repos\Consol_Project_DirectList\Consol_Project_DirectList\Views\Blog\Details.cshtml"
                                             
                                        }

#line default
#line hidden
#nullable disable
            WriteLiteral(@"                                    </div>
                                </div>
                                <!-- Widget / End-->
                                <div class=""clearfix""></div>
                                <div class=""margin-bottom-40""></div>
                            </div>
                        </div>
                    </div>
                    <!-- Sidebar / End -->
                </div>
            </div>
        </div>
    </section>
");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<VmBlog> Html { get; private set; }
    }
}
#pragma warning restore 1591
