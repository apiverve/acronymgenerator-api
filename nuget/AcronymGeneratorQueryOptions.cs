using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.AcronymGenerator
{
    /// <summary>
    /// Query options for the Acronym Generator API
    /// </summary>
    public class AcronymGeneratorQueryOptions
    {
        /// <summary>
        /// The text or phrase to generate acronyms from (max 200 characters)
        /// Example: Application Programming Interface
        /// </summary>
        [JsonProperty("text")]
        public string Text { get; set; }
    }
}
