using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using prjWebCsPurrfectMatch.Models.Enums;

namespace prjWebCsPurrfectMatch.Models
{

    /// <summary>
    /// Represents an adoption request submitted by a user.
    /// </summary>
    public class Request
    {
        public int RequestId { get; set; }                      // Primary key (identity)
        public int UserId { get; set; }                         // Identifier of the user who submitted the request
        public int? CatId { get; set; }                         // Identifier of the cat the user wants to adopt (can be null for a general adoption request)
        public RequestType RequestType { get; set; }            // Type of request (Adoption)
        public RequestStatus RequestStatus { get; set; }        // Current status of the request
        public DateTime SubmittedDate { get; set; }             // Date when the request was submitted
        public DateTime? ReviewedDate { get; set; }             // Date when the request was reviewed by an administrator
        public string ApplicationLetter { get; set; }           // Motivation letter written by the user
    }
}