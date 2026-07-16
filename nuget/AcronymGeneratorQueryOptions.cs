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
        /// The phrase to generate an acronym from (must contain at least 2 words)
        /// </summary>
        [JsonProperty("text")]
        public string Text { get; set; }
    }
}
