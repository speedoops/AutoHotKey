SetTitleMatchMode, 2 ; Match anywhere in title
#IfWinNotActive ,SQL Server Management Studio
; Hotstrings for text replacement

:c:atm::at the moment
:c:Tks::Thanks
:c:tks::thanks
:c:Hth::Hope that helps
:c:hth::hope that helps
:c:Ymmv::Your mileage may vary
:c:ymmv::your mileage may vary
:c:fyi::FYI

; Verbose timestamp
:c:/dtv::
FormatTime, xx,, dd MMM yyyy ; This is one type of the date format
FormatTime, zz,, hh:mm:ss tt ; This is one type of the time format
SendInput, %xx% %zz%
return

; Compact timestamp
:c:/dtc::
FormatTime, xx,, yyyy-MM-dd ; This is one type of the date format
FormatTime, zz,, hh:mm ; This is one type of the time format
SendInput, %xx% %zz%
return

; Verbose date
:c:/dv::
FormatTime, xx,, dd MMM yyyy ; This is one type of the date format
SendInput, %xx%
return

; Compact date
:c:/dtc::
FormatTime, xx,, yyyy-MM-dd ; This is one type of the date format
SendInput, %xx%
return

; time
:c:/t::
FormatTime, zz,, hh:mm tt ; This is one type of the time format
SendInput, %zz%
return



;Work related
:c:TD::TODO:
:c:===::====================
;:c:patchtemplate::Release Version: 3.1.1{ENTER}Urgency: Next Build{ENTER}Reviewed For Patching By: {ENTER}{ENTER}Description of the change:{ENTER}--------------------------{ENTER}{ENTER}Files:{ENTER}------{ENTER}{ENTER}Target Testing:{ENTER}---------------
:c:pacs::PACS
:c:hl7connect::HL7Connect
:c:karisma::Karisma
:c:brs::BRS
:c:api::API
:c:bz::Bugzilla
;:c:hq::HQ
:c:hqd::HQD
:c:ceo::CEO
:c:url::URL
:c:urls::URLs
:c:csv::CSV
:c:sdk::SDK
:C:sms::SMS
:c*:kdm::Karisma.ForgeDataModel
:c*:kctm::KarismaClient.ForgeTemplateMap
:c*:katm::KarismaAgent.ForgeTemplateMap
:c*:ktm::Karisma.ForgeTemplateMap
:c*:kg::Karisma.ForgeTermGlossary
:c*:amz::Adv.Money.Zero

; Development related
;:c:pc::PrimeCache
;:cr*:{gs}::{ get; set; }
:cr*:gps}::get; private set;
:cr*:gs}::get; set;
:cr*:ftm::ForgeTemplateMap

; Shortcuts for ResophNotes
;:cr*:;sql::sql -
;:cr*:;td::todo -

;:c:endif::
;sendRaw {$ENDIF}
;return

:*:]d::  ; This hotstring replaces "]d" with the current date and time via the commands below.
FormatTime, CurrentDateTime,, M/d/yyyy h:mm tt  ; It will look like 9/1/2005 3:53 PM
SendInput %CurrentDateTime%
return

; Replace 'AP.' with 'ApplicationPlan.'
;==============================================
;::ap::ApplicationPlan


;Create an empty Delphi 5 IFDEF declaration
:o:ifdefd5::{{}$IFDEF VER130{}}{RETURN}{{}$ELSE{}}{ENTER}{{}$ENDIF{}}{UP}{HOME}{ENTER}{UP}

:o:$endif::{{}$IFDEF{}}

; Create Kestral Patch Block. For use when making changes in 3rd party code
;:://kp::
;SendInput // -------------------- Start Kestral Patch -------------------- {ENTER}
;SendInput // [] : <reason>{ENTER}
;SendInput // --------------------- End Kestral Patch ---------------------
;SendInput {UP}{HOME}^{RIGHT}{RIGHT}
;return