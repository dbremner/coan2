<?xml version='1.0' encoding='ISO-8859-1' standalone='yes' ?>
<tagfile>
  <compound kind="page">
    <name>main</name>
    <title>Coan Maintainer&apos;s Documentation</title>
    <filename>main</filename>
  </compound>
  <compound kind="file">
    <name>args.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00036</filename>
    <includes id="a00090" name="platform.h" local="yes" imported="no">platform.h</includes>
    <includes id="a00037" name="args.h" local="yes" imported="no">args.h</includes>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <includes id="a00046" name="contradiction.h" local="yes" imported="no">contradiction.h</includes>
    <includes id="a00077" name="io.h" local="yes" imported="no">io.h</includes>
    <includes id="a00081" name="line_despatch.h" local="yes" imported="no">line_despatch.h</includes>
    <includes id="a00044" name="configured_symbols.h" local="yes" imported="no">configured_symbols.h</includes>
    <includes id="a00061" name="filesys.h" local="yes" imported="no">filesys.h</includes>
    <includes id="a00048" name="dataset.h" local="yes" imported="no">dataset.h</includes>
    <class kind="struct">args_state_s</class>
    <member kind="define">
      <type>#define</type>
      <name>PROGRESS_GAGGED</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga28149db4e13b76b4369ce5041ff13d15</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VERSION</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga1c6d5de492ac61ad29aec7aa9a436bbf</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct args_state_s</type>
      <name>args_state_t</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>ga0463fdb4bb40dd39878737bf29abf67d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>option_codes</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga2aa0e9696a75f74ebb1cd928513c76ee</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_FILE</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea641661b1057912a690efd8389baad291</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_REPLACE</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeace7949adfc45a445f2522392f51a6aa8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_BACKUP</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea60ae80820a7a3d5b0f97008993accb55</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_DEF</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea31389668440c53f826e6f604ffac203b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_UNDEF</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeaea5250c42900a5e61d88cc54cea977ff</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_CONFLICT</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea9d8048cbfa8d30eed267c959e5ceee53</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_GAG</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeab41040bd06ec5d675899161407737232</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_VERBOSE</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea5549087f71cc2a3eb3a050bdb2e39502</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_COMPLEMENT</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea355084aeb3bd7219e2effde04605ae66</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_DEBUG</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeae18c66c85f5c325308846289886981d7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_EVALCONSTS</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea5794c46d926ff43825245de4823823d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_DISCARD</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea7372b02cafb1428c09623976c2b7ece6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_LINE</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeac9ad046cff66c675afb98479f89319a3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_POD</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeafded76089f3ad2e73ec65e1e713088db</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_RECURSE</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea3a750cdb55d01ae929c97318e31b6cec</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_FILTER</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeaf2cd6ed39bf42e06a2720d7db41b3832</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_KEEPGOING</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eead35d893ca47dfc432134bb07ef8e06ae</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_IFS</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeaa4a30da77419b4e2d5cf541c47baf825</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_DEFS</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeae3e042ef9821b5ec61dd0fbf57cb7368</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_UNDEFS</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeabd4d6f297a33f1d25e1d98215d934029</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_INCLUDES</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeaf9f4cc4fcea78e1d2d414ca6ec46506e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_LOCATE</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea73afdf226cda1d36072c46f53ead0a45</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_ONCE</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeaac4c0dbccd4c32d985fd10ca5ce9a6b5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_SYSTEM</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeaf664513e2e356c7fcec19786dc059aa8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_LOCAL</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea54967e7471b7f0c0f2e92bf1454a91ea</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_ACTIVE</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea33c3e9d5f9fffec25a3b73ce9905abca</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_INACTIVE</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea5b726fcf615889caa78dd8c4b66c04ef</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_EVALSYMS</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea63ef03757a89ad77737255f2a576368d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_IMPLICIT</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeacfd5aebcfe0ae115d8eb67259eb855a4</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>args_initor</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>gad3dd343f52fa9244ca8dc419f0ce25d1</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>args_finitor</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>gaca0d021367f0f501af57e4535bafb2f2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>args_init</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>ga85eac952274dbd2bf388c8f923a3ca2a</anchor>
      <arglist>(args_state_t *)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>args_finis</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>gaeea2a02e27e41a8c51cbc69712a57812</anchor>
      <arglist>(args_state_t *)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>make_opts_list</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga8b08a7cc0034b68aa98f2ec74a91d3ba</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>usage</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gaad58003a07e0b8b5d78d4cf5a9e85dc2</anchor>
      <arglist>(FILE *fp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>usage_error_summary</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga316a6e50432cd7c11dc648a83097761a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>usage_error</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga502d9f9317dd01c68fc03b060024a827</anchor>
      <arglist>(int reason, const char *format,...)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>usage_help</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga9ae48f87b2809397ab30b97364998d27</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>version</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga4fbbbc8d035c85ce83c6f270a2e56012</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>config_diagnostics</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga7d005a671807d252c6c59fb809fdae27</anchor>
      <arglist>(const char *arg)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>finalise_diagnostics</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga3f72e2c9fd339ee10a07052e5860063b</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>error_invalid_opt</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gafe08552c146b2f9574bc35a34d562a47</anchor>
      <arglist>(cmd_option_t const *cmd, int bad_opt)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>add_files</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gaab190c3508d0df4b7aa4e9acb399003d</anchor>
      <arglist>(char const *path)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>parse_args_file</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gae0e232cf07e2753de26986544d4bed4a</anchor>
      <arglist>(const char *argsfile)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>parse_command_args</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga82856271849e2fb724c482f0c1aecb64</anchor>
      <arglist>(int argc, char *argv[])</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>parse_executable</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>ga0ef13c8b30d859e97264a936b6a1bfc0</anchor>
      <arglist>(char **argv)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>parse_args</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>ga8ab77940e9f8f362c1242eb44f366bb7</anchor>
      <arglist>(int argc, char *argv[])</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>finish_args</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>ga06c440d2b0d406875a73e3c2f15c2338</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static args_state_t</type>
      <name>args_state</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>gab7d4e0a2aa362cfed78681b172a98813</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>args_state_t *</type>
      <name>args_h</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>ga8011f9f247065be8e1c0e926bd911cbf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>args_public_state_t *</type>
      <name>args_public_h</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>ga173e353487ef78ca2d9c6403f902d51f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const args_state_t *const</type>
      <name>args_static_initialiser_h</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>ga1e388ce19e6f768ef47bf935f12e0178</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>args_init_h</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>gae6032c0a51e190c82229cc7bf19a78ef</anchor>
      <arglist>)(args_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>args_finis_h</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>gaa973ed2c693ba06f08fa2e72e1026781</anchor>
      <arglist>)(args_state_t *)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static struct option</type>
      <name>long_options</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gab5b68aa8f898c499ca2c3092ecd9e552</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static char</type>
      <name>opts</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gac0a0a054541c89472274a51cfeaf07d1</anchor>
      <arglist>[(sizeof(long_options)/sizeof(struct option))*3]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static struct cmd_option</type>
      <name>commands</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gadb9e3fb49a6d0b467a94de1ed24a2982</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static int const</type>
      <name>source_cmd_exclusions</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga2c86d7bc0205bf649be0945f02c68170</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static int const</type>
      <name>symbols_cmd_exclusions</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gafe114725b9a7cabdd769db8af718a282</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static int const</type>
      <name>includes_cmd_exclusions</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga5dc4ebd8db1d61d527b30de7f671591d</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static int const</type>
      <name>directives_cmd_exclusions</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga496e9e19becbadbae7e5517a12a33760</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static int const</type>
      <name>defs_cmd_exclusions</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gac4b9d0cbfb06c19a2583dc508fc0d1ec</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static int const</type>
      <name>pragmas_cmd_exclusions</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga23eeed61507653caf1085b5a08182f13</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static int const</type>
      <name>errors_cmd_exclusions</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gadc1b425b21144ec10c3227d44a21a46b</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static struct exclusion_list const</type>
      <name>cmd_exclusion_lists</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gae8410277d69abdb3cd3f2d1d796a6fba</anchor>
      <arglist>[]</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>args.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00037</filename>
    <includes id="a00098" name="state_utils.h" local="yes" imported="no">state_utils.h</includes>
    <includes id="a00065" name="get_options.h" local="yes" imported="no">get_options.h</includes>
    <class kind="struct">args_public_state_s</class>
    <member kind="enumeration">
      <name>discard_policy_t</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>ga2390a004742a92d80e9db77676be1e23</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>DISCARD_DROP</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga2390a004742a92d80e9db77676be1e23a309e432c2e2fc57292ee51d4022c22d1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>DISCARD_BLANK</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga2390a004742a92d80e9db77676be1e23a6eb9dcb92aaecea2bb19593a305bdd42</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>DISCARD_COMMENT</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga2390a004742a92d80e9db77676be1e23a6f5ddf76c712946679eb4b0fab5b1ebe</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>command_codes</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>ga090ed41676221d74d1c36466fc107bae</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_HELP</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga090ed41676221d74d1c36466fc107baeac370f7a4093cca35301ea2e00b3c47a3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_VERSION</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga090ed41676221d74d1c36466fc107baea775afaef84c85d8173a20debb1a9e2ef</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_SOURCE</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga090ed41676221d74d1c36466fc107baea42a1153d8837d0810f20029281669947</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_SYMBOLS</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga090ed41676221d74d1c36466fc107baea20c5ea9ebdedf0b3dc977099df64ca9b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_INCLUDES</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga090ed41676221d74d1c36466fc107baea09d87dc627c4b1f5efa2ab5ab5687e02</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_DEFS</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga090ed41676221d74d1c36466fc107baeaa62a6f87ecb15f411c7931384478cbe7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_PRAGMAS</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga090ed41676221d74d1c36466fc107baeaa0c3c19f1013297f92dba8b18c123256</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_ERRORS</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga090ed41676221d74d1c36466fc107baead324a87657c7d445aa35cc2f22874055</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_DIRECTIVES</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga090ed41676221d74d1c36466fc107baeaef7814fc72acefefecd246edce9014ec</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>command_flags</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>ga6ebc153582ce8c2f3b903db1fa1a1dd6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_HELP_MASK</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga6ebc153582ce8c2f3b903db1fa1a1dd6abe4e4bd6a3ab5bf9b0e6726db6e0b990</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_VERSION_MASK</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga6ebc153582ce8c2f3b903db1fa1a1dd6aa8ee31be315765eefc5bd77f650acc1a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_SOURCE_MASK</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga6ebc153582ce8c2f3b903db1fa1a1dd6aad8b9637884eb908763af1428017718c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_SYMBOLS_MASK</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga6ebc153582ce8c2f3b903db1fa1a1dd6afcaf95e9d7b5bffd98aa9caa45a5bdfc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_INCLUDES_MASK</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga6ebc153582ce8c2f3b903db1fa1a1dd6a746d93f40d75ed196c8835c6437e405d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_DEFS_MASK</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga6ebc153582ce8c2f3b903db1fa1a1dd6a03dc4faef8b505f7929501465816815b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_PRAGMAS_MASK</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga6ebc153582ce8c2f3b903db1fa1a1dd6aab2c9e7e340813d23982622ed75d8b75</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_ERRORS_MASK</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga6ebc153582ce8c2f3b903db1fa1a1dd6a7529a07513fbe7f5bb04861324b5a381</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_DIRECTIVES_MASK</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga6ebc153582ce8c2f3b903db1fa1a1dd6a4d17519d9578311eb4e901705f944cff</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>parse_executable</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>ga0ef13c8b30d859e97264a936b6a1bfc0</anchor>
      <arglist>(char **argv)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>parse_args</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>ga8ab77940e9f8f362c1242eb44f366bb7</anchor>
      <arglist>(int argc, char *argv[])</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>finish_args</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>ga06c440d2b0d406875a73e3c2f15c2338</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="typedef">
      <type>struct args_public_state_s</type>
      <name>args_public_state_t</name>
      <anchorfile>a00142.html</anchorfile>
      <anchor>ga6060ed69c009222585e5e1af61442a65</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>args_public_state_t *</type>
      <name>args_public_h</name>
      <anchorfile>a00142.html</anchorfile>
      <anchor>ga173e353487ef78ca2d9c6403f902d51f</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>args_initor</name>
      <anchorfile>a00142.html</anchorfile>
      <anchor>gad3dd343f52fa9244ca8dc419f0ce25d1</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>args_finitor</name>
      <anchorfile>a00142.html</anchorfile>
      <anchor>gaca0d021367f0f501af57e4535bafb2f2</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>bool.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00038</filename>
    <includes id="a00089" name="opts.h" local="yes" imported="no">opts.h</includes>
    <member kind="enumeration">
      <name>bool</name>
      <anchorfile>a00038.html</anchorfile>
      <anchor>af6a258d8f3ee5206d682d799316314b1</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>canonical_string.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00039</filename>
    <includes id="a00040" name="canonical_string.h" local="yes" imported="no">canonical_string.h</includes>
    <includes id="a00042" name="chew.h" local="yes" imported="no">chew.h</includes>
    <includes id="a00099" name="swiss_army.h" local="yes" imported="no">swiss_army.h</includes>
    <includes id="a00077" name="io.h" local="yes" imported="no">io.h</includes>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <class kind="struct">canonical_string_impl</class>
    <member kind="typedef">
      <type>bool(*</type>
      <name>canonical_string_char_validator_t</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>ga0cfe6b38def067222682eeb1b1a03fe7</anchor>
      <arglist>)(char ch, canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>canonical_string_parse_next_part</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>ga368e6846491154266a50b20a30150781</anchor>
      <arglist>(char const **start, size_t *len)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>canonical_string_init</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>ga8af8a71883c4b1a4a0daa30f2247b8a6</anchor>
      <arglist>(canonical_string_h cs, char const *start, size_t nbytes, char const **pend)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>is_zero_digit</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>ga30a3a31ee9f26cf91132da258198564b</anchor>
      <arglist>(canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>is_octal_numeral</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>ga2d09a716586b23490a1af91d02a9b0eb</anchor>
      <arglist>(canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>is_hex_numeral</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>gaf5799da311567c2ee9d30a604cc0c322</anchor>
      <arglist>(canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>is_decimal_numeral</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>ga477b31ae7a4e34c214d3984c4f244c1e</anchor>
      <arglist>(canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>is_type_suffix_char</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>gabf643de88e94f3125c382404334d02c6</anchor>
      <arglist>(char ch)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static char const *</type>
      <name>integer_type_suffix</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>ga2c66281f3b1e7ee565aaf4f5b094af95</anchor>
      <arglist>(canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>is_valid_digit</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>ga881489a38705995ee4312ed02053e499</anchor>
      <arglist>(char ch, canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>is_valid_symbol_char</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>gab12f8c4bf4a012d7cc8105ee4cdde3b4</anchor>
      <arglist>(char ch, canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>canonical_string_init_by_test</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>gab37819898b3a01ca2c06f9b45da557bb</anchor>
      <arglist>(canonical_string_h cs, char const **cpp, canonical_string_char_validator_t validator)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>canonical_string_copy_init</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>ga32ab31fa8e30ee02e28861fc75cb9ff7</anchor>
      <arglist>(canonical_string_h dest, canonical_string_const_h src)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>canonical_string_finis</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>gae1536cb029191a978072e14935fcf281</anchor>
      <arglist>(canonical_string_h cs)</arglist>
    </member>
    <member kind="function">
      <type>canonical_string_h</type>
      <name>canonical_string_new</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>gae91a85cd5467742f32bcd38aaf82e57d</anchor>
      <arglist>(char const *start, size_t nbytes, char const **pend)</arglist>
    </member>
    <member kind="function">
      <type>canonical_string_h</type>
      <name>canonical_numeral</name>
      <anchorfile>a00039.html</anchorfile>
      <anchor>a167ac501edd365f6c296115a7e3a0b3c</anchor>
      <arglist>(int_spec_t const *int_spec)</arglist>
    </member>
    <member kind="function">
      <type>canonical_string_h</type>
      <name>canonical_identifier</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga171205aa4e2a34b7c6b97ae33b7b8322</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function">
      <type>canonical_string_h</type>
      <name>canonical_string_copy</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga64c2f17a98d398f3dbb43721a0903bfa</anchor>
      <arglist>(canonical_string_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>canonical_string_dispose</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga7b75f29ca849892d7141dc4230ee8683</anchor>
      <arglist>(canonical_string_h cs)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>canonical_string_swap</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga6ff1de9d0af6dfa06b3b8bd5c8e4fde7</anchor>
      <arglist>(canonical_string_h lhs, canonical_string_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>canonical_string_assign</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>gac81255d373d0530bd51283cc98899381</anchor>
      <arglist>(canonical_string_h dest, canonical_string_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>canonical_string_equal</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga8a74dde332b649d669f6c385d3367006</anchor>
      <arglist>(canonical_string_const_h lhs, canonical_string_const_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>canonical_string_compare</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga079b10dd7c75371b5cd1a094cae8b48e</anchor>
      <arglist>(canonical_string_const_h lhs, void const *rhs, size_t rhslen)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>canonical_string_text</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga4e86df4ab677a8f3d1dd3ccea05e52a2</anchor>
      <arglist>(canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>canonical_string_length</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>gab81c4946255a6e1f8d94c1285659e4b1</anchor>
      <arglist>(canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>canonical_string_appends</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>gafb241fad66c4001ec340c8014320af5e</anchor>
      <arglist>(canonical_string_h cs, canonical_string_const_h more, bool punct)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>canonical_string_appendc</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga5fa1fa6bb0a91c5aa471b40cc259212d</anchor>
      <arglist>(canonical_string_h cs, char more)</arglist>
    </member>
    <member kind="function">
      <type>canonical_string_h</type>
      <name>canonical_string_substr</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga64fa10a99624961db01a1c93e996328e</anchor>
      <arglist>(canonical_string_const_h cs, size_t start, size_t len)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>canonical_string_replace</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga9c8e7ea96c909b6aecad5420463a72de</anchor>
      <arglist>(canonical_string_h cs, size_t start, size_t len, canonical_string_const_h subst)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>canonical_string.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00040</filename>
    <includes id="a00038" name="bool.h" local="yes" imported="no">bool.h</includes>
    <member kind="typedef">
      <type>struct canonical_string_impl *</type>
      <name>canonical_string_h</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>gaeaaf3f14e53349a3c93fe2ec0458969f</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct canonical_string_impl const *</type>
      <name>canonical_string_const_h</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>gaf9453220b71af956f2011eeed67c9c4d</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>canonical_string_h</type>
      <name>canonical_string_new</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>gae91a85cd5467742f32bcd38aaf82e57d</anchor>
      <arglist>(char const *start, size_t nbytes, char const **pend)</arglist>
    </member>
    <member kind="function">
      <type>canonical_string_h</type>
      <name>canonical_numeral</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>gacd5850cf30d25ce7d881f0d1dac14734</anchor>
      <arglist>(struct int_spec const *int_spec)</arglist>
    </member>
    <member kind="function">
      <type>canonical_string_h</type>
      <name>canonical_identifier</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga171205aa4e2a34b7c6b97ae33b7b8322</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function">
      <type>canonical_string_h</type>
      <name>canonical_string_copy</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga64c2f17a98d398f3dbb43721a0903bfa</anchor>
      <arglist>(canonical_string_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>canonical_string_dispose</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga7b75f29ca849892d7141dc4230ee8683</anchor>
      <arglist>(canonical_string_h cs)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>canonical_string_swap</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga6ff1de9d0af6dfa06b3b8bd5c8e4fde7</anchor>
      <arglist>(canonical_string_h lhs, canonical_string_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>canonical_string_assign</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>gac81255d373d0530bd51283cc98899381</anchor>
      <arglist>(canonical_string_h dest, canonical_string_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>canonical_string_equal</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga8a74dde332b649d669f6c385d3367006</anchor>
      <arglist>(canonical_string_const_h lhs, canonical_string_const_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>canonical_string_text</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga4e86df4ab677a8f3d1dd3ccea05e52a2</anchor>
      <arglist>(canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>canonical_string_length</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>gab81c4946255a6e1f8d94c1285659e4b1</anchor>
      <arglist>(canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>canonical_string_compare</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga079b10dd7c75371b5cd1a094cae8b48e</anchor>
      <arglist>(canonical_string_const_h lhs, void const *rhs, size_t rhslen)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>canonical_string_appendc</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga5fa1fa6bb0a91c5aa471b40cc259212d</anchor>
      <arglist>(canonical_string_h cs, char more)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>canonical_string_appends</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>gafb241fad66c4001ec340c8014320af5e</anchor>
      <arglist>(canonical_string_h cs, canonical_string_const_h more, bool punct)</arglist>
    </member>
    <member kind="function">
      <type>canonical_string_h</type>
      <name>canonical_string_substr</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga64fa10a99624961db01a1c93e996328e</anchor>
      <arglist>(canonical_string_const_h cs, size_t start, size_t len)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>canonical_string_replace</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga9c8e7ea96c909b6aecad5420463a72de</anchor>
      <arglist>(canonical_string_h cs, size_t start, size_t len, canonical_string_const_h subst)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>chew.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00041</filename>
    <includes id="a00042" name="chew.h" local="yes" imported="no">chew.h</includes>
    <includes id="a00037" name="args.h" local="yes" imported="no">args.h</includes>
    <includes id="a00077" name="io.h" local="yes" imported="no">io.h</includes>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <class kind="struct">chew_state_s</class>
    <member kind="typedef">
      <type>struct chew_state_s</type>
      <name>chew_state_t</name>
      <anchorfile>a00149.html</anchorfile>
      <anchor>gac12a9c7ece698b698886d74db28699eb</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>chew_initor</name>
      <anchorfile>a00149.html</anchorfile>
      <anchor>ga1540ca78979e4eec38a5ed77ca73bd0a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>chew_finitor</name>
      <anchorfile>a00149.html</anchorfile>
      <anchor>ga0fc99e891adbff1be6c5488cf6d18545</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>is_line_continuation</name>
      <anchorfile>a00148.html</anchorfile>
      <anchor>ga352da49f9fbc21f443b311c0477209d0</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>chew_continuation</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>ga5d6581d0984f9daa1437bcc78f8d1ffd</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>chew_symbol</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gaa3a9b76cddc8841fbc51f7cd80f890ec</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>chew_string</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>ga9cda05e29307e8a5639d9f5f921d3872</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>chew_unbroken_string</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>ga1d0b1664baf71f9671c6bc7ec790b1a0</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>chew_macro_call</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>ga4904c11378260aaf7020abe2dd1a12dd</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>chew_header_name</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gaa9b698bd93ae3abbeea0f86b287f7521</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>eol</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>ga86a573f92f136a3b224a457ff8d08afe</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>chew_on</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gaedb3c3bd20836fededa9ceb27cd8a4ea</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>chew_toplevel</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gac56370087cd6b5ea9c728061c2283604</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static chew_state_t</type>
      <name>chew_state</name>
      <anchorfile>a00149.html</anchorfile>
      <anchor>ga6ce3c7cea452af4b72705365cc9f3d4d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>chew_state_t *</type>
      <name>chew_h</name>
      <anchorfile>a00149.html</anchorfile>
      <anchor>gad4b38ebfcb43af293493689c1a5c22fd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>chew_public_state_t *</type>
      <name>chew_public_h</name>
      <anchorfile>a00149.html</anchorfile>
      <anchor>ga60186a24ff463f0b40686b22267b2421</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const chew_state_t *const</type>
      <name>chew_static_initialiser_h</name>
      <anchorfile>a00149.html</anchorfile>
      <anchor>ga647a42293699c735a93599231b7ec658</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>chew_init_h</name>
      <anchorfile>a00149.html</anchorfile>
      <anchor>gacfdf47ea899942751037b0a02e3ff5e7</anchor>
      <arglist>)(chew_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>chew_finis_h</name>
      <anchorfile>a00149.html</anchorfile>
      <anchor>gad793c468fbbc89005dd60890fb439ad4</anchor>
      <arglist>)(chew_state_t *)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>chew.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00042</filename>
    <includes id="a00098" name="state_utils.h" local="yes" imported="no">state_utils.h</includes>
    <class kind="struct">chew_public_state_s</class>
    <member kind="typedef">
      <type>enum comment_state</type>
      <name>comment_state_t</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>ga3f11ec41907ba0b7eaa3e97954d79082</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct chew_public_state_s</type>
      <name>chew_public_state_t</name>
      <anchorfile>a00147.html</anchorfile>
      <anchor>ga0335c5ef505069ce62b743c6d3593960</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>comment_state</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>ga5a33cef52548bb44fa477479d10f4770</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NO_COMMENT</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gga5a33cef52548bb44fa477479d10f4770a0f603675384e00e001c308a14d25a9fb</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>C_COMMENT</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gga5a33cef52548bb44fa477479d10f4770ad6e27cd86e7b4b6afc686b25efe6b79e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CXX_COMMENT</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gga5a33cef52548bb44fa477479d10f4770aee0b21ee410aae2cf1620f5bc2346b83</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STARTING_COMMENT</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gga5a33cef52548bb44fa477479d10f4770ac275b6725664d99466fb91888472687e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FINISHING_COMMENT</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gga5a33cef52548bb44fa477479d10f4770a319acde8bf7bfc93557fd57f4659176c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PSEUDO_COMMENT</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gga5a33cef52548bb44fa477479d10f4770a6d9f51a3d3f214c247d3c8457d4c6d6b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>line_state_t</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>ga55f4253a9885dff9bf3ab4e3131b5e45</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LS_NEUTER</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gga55f4253a9885dff9bf3ab4e3131b5e45a26ccce4988d876d0309d99496736284c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LS_DIRECTIVE</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gga55f4253a9885dff9bf3ab4e3131b5e45a684657118991d59f00422f7c55a8cec2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LS_CODE</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gga55f4253a9885dff9bf3ab4e3131b5e45aa705d04959d5c2c912e9f93c26a61779</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>eol</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>ga86a573f92f136a3b224a457ff8d08afe</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>chew_on</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gaedb3c3bd20836fededa9ceb27cd8a4ea</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>chew_symbol</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gaa3a9b76cddc8841fbc51f7cd80f890ec</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>chew_continuation</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>ga5d6581d0984f9daa1437bcc78f8d1ffd</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>chew_macro_call</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>ga4904c11378260aaf7020abe2dd1a12dd</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>chew_header_name</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gaa9b698bd93ae3abbeea0f86b287f7521</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>chew_string</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>ga9cda05e29307e8a5639d9f5f921d3872</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>chew_unbroken_string</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>ga1d0b1664baf71f9671c6bc7ec790b1a0</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>chew_toplevel</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gac56370087cd6b5ea9c728061c2283604</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>chew_initor</name>
      <anchorfile>a00147.html</anchorfile>
      <anchor>ga1540ca78979e4eec38a5ed77ca73bd0a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>chew_finitor</name>
      <anchorfile>a00147.html</anchorfile>
      <anchor>ga0fc99e891adbff1be6c5488cf6d18545</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>chew_public_state_t *</type>
      <name>chew_public_h</name>
      <anchorfile>a00147.html</anchorfile>
      <anchor>ga60186a24ff463f0b40686b22267b2421</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>configured_symbols.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00043</filename>
    <includes id="a00044" name="configured_symbols.h" local="yes" imported="no">configured_symbols.h</includes>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <includes id="a00077" name="io.h" local="yes" imported="no">io.h</includes>
    <member kind="typedef">
      <type>configured_symbols_public_state_t</type>
      <name>configured_symbols_state_t</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>gab59f71b9bc23c378f4a72d9a0a910cab</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>configured_symbols_initor</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>ga9084bee9ff55f3d1a7a672cc3aee8d9f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>configured_symbols_finitor</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>ga5a1bb380d9889ceee0533f2c890815fd</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>configured_symbols_init</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>ga97aff1a7f2b0939ce10dadb565dfeb6b</anchor>
      <arglist>(configured_symbols_state_t *)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>configured_symbols_finis</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>ga77837362e0846a6fc35ba7c3a93683fe</anchor>
      <arglist>(configured_symbols_state_t *)</arglist>
    </member>
    <member kind="function">
      <type>symbol_const_h</type>
      <name>configured_symbol_seek_const</name>
      <anchorfile>a00131.html</anchorfile>
      <anchor>ga42a502fe67d8f9813761559235660113</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function">
      <type>symbol_h</type>
      <name>configured_symbol_seek</name>
      <anchorfile>a00131.html</anchorfile>
      <anchor>ga4d0475665a40c8cd0be2f2deee9f1989</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function">
      <type>symbol_const_h</type>
      <name>configured_symbol_match_const</name>
      <anchorfile>a00131.html</anchorfile>
      <anchor>ga869e732b269d31fe90f01a931f55bd1c</anchor>
      <arglist>(char const *symname, size_t namelen)</arglist>
    </member>
    <member kind="function">
      <type>symbol_h</type>
      <name>configured_symbol_match</name>
      <anchorfile>a00131.html</anchorfile>
      <anchor>ga54483c9a6b24ec44b912be15e79e8e8c</anchor>
      <arglist>(char const *symname, size_t namelen)</arglist>
    </member>
    <member kind="function">
      <type>line_type_t</type>
      <name>configured_symbol_add</name>
      <anchorfile>a00131.html</anchorfile>
      <anchor>ga8e49b149613a8899e32431823d669b8c</anchor>
      <arglist>(bool define, symbol_h sym, char const *tail, char const **pend)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>configured_symbols_rewind</name>
      <anchorfile>a00131.html</anchorfile>
      <anchor>ga815157a805434d2d24ab70139e389455</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>symbol_h</type>
      <name>configured_symbol_find</name>
      <anchorfile>a00131.html</anchorfile>
      <anchor>gae4528112bfd9b7d551139348b56144e2</anchor>
      <arglist>(canonical_string_const_h cs, size_t *start)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static configured_symbols_state_t</type>
      <name>configured_symbols_state</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>ga830f8d1de3d8b3fd67ac427afea442f4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>configured_symbols_state_t *</type>
      <name>configured_symbols_h</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>ga10c76e28d3a5f909c43e7028b20c6236</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>configured_symbols_public_state_t *</type>
      <name>configured_symbols_public_h</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>gaa113eb8f13ebed380f6a53b98e7ecf1d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const configured_symbols_state_t *const</type>
      <name>configured_symbols_static_initialiser_h</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>ga5eef01c7c54d0dce729c98a83356810c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>configured_symbols_init_h</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>gad6e4ebab72346043969f350d466e614a</anchor>
      <arglist>)(configured_symbols_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>configured_symbols_finis_h</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>ga4dbc74359a602363761a1b9c4caa0578</anchor>
      <arglist>)(configured_symbols_state_t *)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>configured_symbols.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00044</filename>
    <includes id="a00098" name="state_utils.h" local="yes" imported="no">state_utils.h</includes>
    <includes id="a00092" name="ptr_set.h" local="yes" imported="no">ptr_set.h</includes>
    <includes id="a00101" name="symbol.h" local="yes" imported="no">symbol.h</includes>
    <class kind="struct">configured_symbols_public_state_s</class>
    <member kind="typedef">
      <type>struct configured_symbols_public_state_s</type>
      <name>configured_symbols_public_state_t</name>
      <anchorfile>a00132.html</anchorfile>
      <anchor>ga5b3cce005a3cd32c9bea3b43e7f955ad</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>symbol_h</type>
      <name>configured_symbol_seek</name>
      <anchorfile>a00131.html</anchorfile>
      <anchor>ga4d0475665a40c8cd0be2f2deee9f1989</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function">
      <type>symbol_const_h</type>
      <name>configured_symbol_seek_const</name>
      <anchorfile>a00131.html</anchorfile>
      <anchor>ga42a502fe67d8f9813761559235660113</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function">
      <type>symbol_h</type>
      <name>configured_symbol_match</name>
      <anchorfile>a00131.html</anchorfile>
      <anchor>ga54483c9a6b24ec44b912be15e79e8e8c</anchor>
      <arglist>(char const *symname, size_t len)</arglist>
    </member>
    <member kind="function">
      <type>symbol_const_h</type>
      <name>configured_symbol_match_const</name>
      <anchorfile>a00131.html</anchorfile>
      <anchor>ga869e732b269d31fe90f01a931f55bd1c</anchor>
      <arglist>(char const *symname, size_t len)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>configured_symbols_rewind</name>
      <anchorfile>a00131.html</anchorfile>
      <anchor>ga815157a805434d2d24ab70139e389455</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>symbol_h</type>
      <name>configured_symbol_find</name>
      <anchorfile>a00131.html</anchorfile>
      <anchor>gae4528112bfd9b7d551139348b56144e2</anchor>
      <arglist>(canonical_string_const_h cs, size_t *start)</arglist>
    </member>
    <member kind="function">
      <type>line_type_t</type>
      <name>configured_symbol_add</name>
      <anchorfile>a00131.html</anchorfile>
      <anchor>ga8e49b149613a8899e32431823d669b8c</anchor>
      <arglist>(bool define, symbol_h sym, char const *tail, char const **pend)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>configured_symbols_initor</name>
      <anchorfile>a00132.html</anchorfile>
      <anchor>ga9084bee9ff55f3d1a7a672cc3aee8d9f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>configured_symbols_finitor</name>
      <anchorfile>a00132.html</anchorfile>
      <anchor>ga5a1bb380d9889ceee0533f2c890815fd</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>configured_symbols_public_state_t *</type>
      <name>configured_symbols_public_h</name>
      <anchorfile>a00132.html</anchorfile>
      <anchor>gaa113eb8f13ebed380f6a53b98e7ecf1d</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>contradiction.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00045</filename>
    <includes id="a00046" name="contradiction.h" local="yes" imported="no">contradiction.h</includes>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <includes id="a00081" name="line_despatch.h" local="yes" imported="no">line_despatch.h</includes>
    <includes id="a00077" name="io.h" local="yes" imported="no">io.h</includes>
    <includes id="a00069" name="if_control.h" local="yes" imported="no">if_control.h</includes>
    <class kind="struct">contradiction_state_s</class>
    <member kind="define">
      <type>#define</type>
      <name>CONTRADICTION_PENDING</name>
      <anchorfile>a00168.html</anchorfile>
      <anchor>gaa517e3efe2b7c94adcb04d78c8ebde1a</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct contradiction_state_s</type>
      <name>contradiction_state_t</name>
      <anchorfile>a00169.html</anchorfile>
      <anchor>ga0e28e5480e670fafed7f473cc14469ea</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ERR_MSG_BUF</name>
      <anchorfile>a00168.html</anchorfile>
      <anchor>gga06fc87d81c62e9abb8790b6e5713c55baca76ee1487890920dd9f0600d1c5596c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OUT_MSG_BUF</name>
      <anchorfile>a00168.html</anchorfile>
      <anchor>gga06fc87d81c62e9abb8790b6e5713c55ba30370aa5922b2025a967d24c690796b0</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>contradiction_initor</name>
      <anchorfile>a00169.html</anchorfile>
      <anchor>ga5e898c602426eca0eb6b8f77d8cf1b0f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>contradiction_finitor</name>
      <anchorfile>a00169.html</anchorfile>
      <anchor>ga79426c2b41c18d7bb7ab01c22a78ff84</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>compose_contradiction_insert_format</name>
      <anchorfile>a00168.html</anchorfile>
      <anchor>ga9acd7f867ee25813c9a03c5fe1942aab</anchor>
      <arglist>(heap_str *buf, const char *sub_format)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>forget_pending_contradiction</name>
      <anchorfile>a00168.html</anchorfile>
      <anchor>ga3026edd3f4582d50903ace5a182dde07</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>insert_pending_contradiction</name>
      <anchorfile>a00168.html</anchorfile>
      <anchor>ga05c63a379eb80132e80ba20d38510fa9</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>insert_contradiction</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>ga23f2a8d5a91d96e1b2e96b503789a768</anchor>
      <arglist>(char const *sub_format)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>contradiction_policy</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>ga4f037d57833ddb1db273e6ed934d51bc</anchor>
      <arglist>(contradiction_policy_t p)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>flush_contradiction</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>gadaa07467468668b4b0bf07775286c4db</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>forget_contradiction</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>ga4cb5d19a7cb3ad6dd5f2c071c194777b</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>save_contradiction</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>ga1511a4f3a519e5f287e8cc5a196efed0</anchor>
      <arglist>(char const *sub_format)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static contradiction_state_t</type>
      <name>contradiction_state</name>
      <anchorfile>a00169.html</anchorfile>
      <anchor>ga669f441814677382a463d8f9016dc528</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>contradiction_state_t *</type>
      <name>contradiction_h</name>
      <anchorfile>a00169.html</anchorfile>
      <anchor>ga464c2167660e267ff5146e1b6471f345</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>contradiction_public_state_t *</type>
      <name>contradiction_public_h</name>
      <anchorfile>a00169.html</anchorfile>
      <anchor>gab424c04f31d07971d5cb8788e95f1f89</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const contradiction_state_t *const</type>
      <name>contradiction_static_initialiser_h</name>
      <anchorfile>a00169.html</anchorfile>
      <anchor>ga226a48e6010a6d652bc680e4b920782e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>contradiction_init_h</name>
      <anchorfile>a00169.html</anchorfile>
      <anchor>gaf57472e0b65c57f1ada9c4ed39b51a76</anchor>
      <arglist>)(contradiction_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>contradiction_finis_h</name>
      <anchorfile>a00169.html</anchorfile>
      <anchor>ga94f49aaa6038d4f637402e879822c993</anchor>
      <arglist>)(contradiction_state_t *)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const contradiction_state_t</type>
      <name>contradiction_static_initialiser</name>
      <anchorfile>a00169.html</anchorfile>
      <anchor>gadba6ede17acb152762d0065c54ff5332</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>contradiction.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00046</filename>
    <includes id="a00098" name="state_utils.h" local="yes" imported="no">state_utils.h</includes>
    <includes id="a00101" name="symbol.h" local="yes" imported="no">symbol.h</includes>
    <class kind="struct">contradiction_public_state_s</class>
    <member kind="typedef">
      <type>enum contradiction_policy</type>
      <name>contradiction_policy_t</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>ga5d6960ac3048d12daa5783843d3c5f20</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>contradiction_policy</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>ga79ecdc9ca26e968f915b6f277ffc6707</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CONTRADICTION_DELETE</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>gga79ecdc9ca26e968f915b6f277ffc6707a54eb933bd59c0ea4213076ae759801e9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CONTRADICTION_COMMENT</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>gga79ecdc9ca26e968f915b6f277ffc6707a611b712a959b615754503e274233a8e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CONTRADICTION_ERROR</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>gga79ecdc9ca26e968f915b6f277ffc6707a2330d641234867f18b0cdf544301c9a8</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>contradiction_policy</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>ga4f037d57833ddb1db273e6ed934d51bc</anchor>
      <arglist>(contradiction_policy_t pol)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>insert_contradiction</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>ga23f2a8d5a91d96e1b2e96b503789a768</anchor>
      <arglist>(char const *sub_format)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>forget_contradiction</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>ga4cb5d19a7cb3ad6dd5f2c071c194777b</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>flush_contradiction</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>gadaa07467468668b4b0bf07775286c4db</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>save_contradiction</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>ga1511a4f3a519e5f287e8cc5a196efed0</anchor>
      <arglist>(char const *sub_format)</arglist>
    </member>
    <member kind="typedef">
      <type>struct contradiction_public_state_s</type>
      <name>contradiction_public_state_t</name>
      <anchorfile>a00167.html</anchorfile>
      <anchor>gab24721c4d7f37caddd8b5e1ad8db8531</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>contradiction_public_state_t *</type>
      <name>contradiction_public_h</name>
      <anchorfile>a00167.html</anchorfile>
      <anchor>gab424c04f31d07971d5cb8788e95f1f89</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>contradiction_initor</name>
      <anchorfile>a00167.html</anchorfile>
      <anchor>ga5e898c602426eca0eb6b8f77d8cf1b0f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>contradiction_finitor</name>
      <anchorfile>a00167.html</anchorfile>
      <anchor>ga79426c2b41c18d7bb7ab01c22a78ff84</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>dataset.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00047</filename>
    <includes id="a00048" name="dataset.h" local="yes" imported="no">dataset.h</includes>
    <includes id="a00090" name="platform.h" local="yes" imported="no">platform.h</includes>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <class kind="struct">dataset_state_s</class>
    <member kind="typedef">
      <type>struct dataset_state_s</type>
      <name>dataset_state_t</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>gaff7399637f1a9ac49f6903eaead9e084</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dataset_initor</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>ga1f4d1da1a591997b06c66bc2b1bca87e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dataset_finitor</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>gaf865762e873d38324cd2c4de97b67a44</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dataset_init</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>gafeb49f8937f7ca981bb32981855b2fe5</anchor>
      <arglist>(dataset_state_t *)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dataset_finis</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>gaf04f173568d72bfb7a5a4cbe145be98c</anchor>
      <arglist>(dataset_state_t *)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>filter_filename</name>
      <anchorfile>a00189.html</anchorfile>
      <anchor>ga76903e3efd3177d738354a630a619b94</anchor>
      <arglist>(const char *filename)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>build_proc</name>
      <anchorfile>a00189.html</anchorfile>
      <anchor>gaa9ebc65a1005cb1729c8e73deb990ac0</anchor>
      <arglist>(file_tree_h ft, char const *name, file_tree_traverse_state_t context)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dataset_filter_filetypes</name>
      <anchorfile>a00187.html</anchorfile>
      <anchor>ga2d2c0259095ca16d84bb6a444e68994f</anchor>
      <arglist>(const char *optarg)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dataset_add</name>
      <anchorfile>a00187.html</anchorfile>
      <anchor>ga6f6b8723d0ba1877de2c42910e740061</anchor>
      <arglist>(char const *path)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static dataset_state_t</type>
      <name>dataset_state</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>gaaf8cc0e7e61334c968a218075d1bcd2f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>dataset_state_t *</type>
      <name>dataset_h</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>ga832503f19bf2004799b61f3718ac1f71</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>dataset_public_state_t *</type>
      <name>dataset_public_h</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>ga96119d0a2341a502b3d191c089101c15</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const dataset_state_t *const</type>
      <name>dataset_static_initialiser_h</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>ga8e675c9f2e5c06023144cca99759cc40</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>dataset_init_h</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>ga160bc625d21cdd0df219499a24c28455</anchor>
      <arglist>)(dataset_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>dataset_finis_h</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>ga98df1ea8a35264529eed291215753afc</anchor>
      <arglist>)(dataset_state_t *)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>dataset.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00048</filename>
    <includes id="a00098" name="state_utils.h" local="yes" imported="no">state_utils.h</includes>
    <includes id="a00059" name="file_tree.h" local="yes" imported="no">file_tree.h</includes>
    <class kind="struct">dataset_public_state_s</class>
    <member kind="typedef">
      <type>struct dataset_public_state_s</type>
      <name>dataset_public_state_t</name>
      <anchorfile>a00188.html</anchorfile>
      <anchor>ga6f6f63ba53a739f480865146bf23179a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dataset_filter_filetypes</name>
      <anchorfile>a00187.html</anchorfile>
      <anchor>ga2d2c0259095ca16d84bb6a444e68994f</anchor>
      <arglist>(const char *list)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dataset_add</name>
      <anchorfile>a00187.html</anchorfile>
      <anchor>ga6f6b8723d0ba1877de2c42910e740061</anchor>
      <arglist>(char const *path)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dataset_initor</name>
      <anchorfile>a00188.html</anchorfile>
      <anchor>ga1f4d1da1a591997b06c66bc2b1bca87e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dataset_finitor</name>
      <anchorfile>a00188.html</anchorfile>
      <anchor>gaf865762e873d38324cd2c4de97b67a44</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>dataset_public_state_t *</type>
      <name>dataset_public_h</name>
      <anchorfile>a00188.html</anchorfile>
      <anchor>ga96119d0a2341a502b3d191c089101c15</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>directives_tally.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00049</filename>
    <includes id="a00098" name="state_utils.h" local="yes" imported="no">state_utils.h</includes>
    <includes id="a00092" name="ptr_set.h" local="yes" imported="no">ptr_set.h</includes>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <includes id="a00037" name="args.h" local="yes" imported="no">args.h</includes>
    <includes id="a00079" name="lexicon.h" local="yes" imported="no">lexicon.h</includes>
    <class kind="struct">directives_tally_state_s</class>
    <class kind="struct">directive</class>
    <member kind="typedef">
      <type>directives_tally_state_t</type>
      <name>directives_tally_public_state_t</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>ga08aa4a3ee1c3e1f6a0a9b62af3d3f28d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct directive</type>
      <name>directive_t</name>
      <anchorfile>a00218.html</anchorfile>
      <anchor>ga113e817c2af28adae5754b00b9896681</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct directives_tally_state_s</type>
      <name>directives_tally_state_t</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>ga8a4dc01a888ca7b6268fb135e1ac91b5</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>directives_tally_initor</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>ga738906a7dce11dcab6a0346dcf014812</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>directives_tally_finitor</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>ga80b7d46c3af7f6d479c88ea35ffc6a6d</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>directives_tally_init</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>ga997fc4f0b02b446ad711deef47e99fa8</anchor>
      <arglist>(directives_tally_state_t *)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>directives_tally_finis</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>ga3e306e4805ad74b0ce60b3ca45cfefeb</anchor>
      <arglist>(directives_tally_state_t *)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static canonical_string_const_h</type>
      <name>directive_text_lookup</name>
      <anchorfile>a00218.html</anchorfile>
      <anchor>gaa14e51f35fcc4afb176081dc904a9921</anchor>
      <arglist>(canonical_string_const_h cl, directive_type_t directive_type)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>directive_text_add</name>
      <anchorfile>a00218.html</anchorfile>
      <anchor>gaa481712a88fa3fec987194c5658491f4</anchor>
      <arglist>(canonical_string_const_h cl, directive_type_t directive_type)</arglist>
    </member>
    <member kind="function">
      <type>directive_type_t</type>
      <name>get_directive_type</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>ga26566f0158e67dabcd4b4e16328fae75</anchor>
      <arglist>(char const **keyword)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>get_directive_keyword</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>ga931021410995c2b0841e1ae200a9b366</anchor>
      <arglist>(directive_type_t directive_type)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>directive_tally</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gad6f7a51943d3442696918f21046940c0</anchor>
      <arglist>(canonical_string_const_h cl, directive_type_t directive_type)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static directives_tally_state_t</type>
      <name>directives_tally_state</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>ga7d594217a66f25f1f01d28d8e7f36fda</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>directives_tally_state_t *</type>
      <name>directives_tally_h</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>gaaff4e40b483c8c24fb7c2eeddd26c967</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>directives_tally_public_state_t *</type>
      <name>directives_tally_public_h</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>gaeb9d3001fb3d24ab936b4938eba2c40e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const directives_tally_state_t *const</type>
      <name>directives_tally_static_initialiser_h</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>ga40467667d8d2dbe39abdc48e3feb56a7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>directives_tally_init_h</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>ga9d6bdffceef597c826f204d9cc26e0c4</anchor>
      <arglist>)(directives_tally_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>directives_tally_finis_h</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>ga5dc2b05b6bf1eb33144d272f4c29b995</anchor>
      <arglist>)(directives_tally_state_t *)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static directive_t const</type>
      <name>directives_dict</name>
      <anchorfile>a00218.html</anchorfile>
      <anchor>gabbcfbd0ef63107645efdbb7cf1038915</anchor>
      <arglist>[]</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>directives_tally.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00050</filename>
    <includes id="a00040" name="canonical_string.h" local="yes" imported="no">canonical_string.h</includes>
    <member kind="enumeration">
      <name>directive_type_t</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>ga5b793074376b6ca69e25a846dc68fccb</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_UNKNOWN</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccba9b8e99ea2698fbaabf3976784e7b5d16</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_IF</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccba10c6b77e19fa5980ac378db3e2444f4f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_IFDEF</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccba4c6e6e78a472a75c81eb484fd737215c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_IFNDEF</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccbaae1f9d5a9c9dfc1d1cd545692d8b4f34</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_ELSE</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccba1d91047f06e190f40a9a2508cd3bd5a1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_ELIF</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccba09aad12c6de32dab45397b4bdb7fb95c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_ENDIF</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccba8219f1d5797e5e2fb6a563b12e79f1b8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_DEFINE</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccbab2325161093d4be99429a7fe35da5405</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_UNDEF</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccba201fe22b92aef27243b627617153caae</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_INCLUDE</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccba52ea004f13c3104809c41e072effe1db</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_PRAGMA</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccbab9e061de92f6c268a1763aa3ee30667a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_ERROR</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccba20da15fed760e5f61c030aab221d26f6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_COUNT</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccba126fbfef79aa8cfbc95579b01c9faba4</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>directive_tally</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gad6f7a51943d3442696918f21046940c0</anchor>
      <arglist>(canonical_string_const_h cl, directive_type_t directive_type)</arglist>
    </member>
    <member kind="function">
      <type>directive_type_t</type>
      <name>get_directive_type</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>ga26566f0158e67dabcd4b4e16328fae75</anchor>
      <arglist>(char const **keyword)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>get_directive_keyword</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>ga931021410995c2b0841e1ae200a9b366</anchor>
      <arglist>(directive_type_t directive_type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>IMPORT_INITOR</name>
      <anchorfile>a00147.html</anchorfile>
      <anchor>gac6114b8664ba5629d3f8fcc4e08e0149</anchor>
      <arglist>(directives_tally)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>doxygen.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00051</filename>
  </compound>
  <compound kind="file">
    <name>eval_result.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00052</filename>
    <includes id="a00053" name="eval_result.h" local="yes" imported="no">eval_result.h</includes>
    <member kind="function">
      <type>void</type>
      <name>eval_result_set_value</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gaac7f8c5270b1a47c2b23aa35e976de3e</anchor>
      <arglist>(eval_result_t *result, int_spec_t const *int_spec)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>eval_result_clear</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gada8f020b0582af2c597eac9cb1b801d5</anchor>
      <arglist>(eval_result_t *result)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>eval_result_parsed</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga81df7aba04fc2af46df4ee8416a02fd7</anchor>
      <arglist>(eval_result_t *result)</arglist>
    </member>
    <member kind="variable">
      <type>int_spec_t const</type>
      <name>int_spec_false</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga46dbf0c04d60e6e88d99d7901068493d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int_spec_t const</type>
      <name>int_spec_true</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gafbd0c4283552997b95e781a225a0b0bf</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>eval_result.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00053</filename>
    <includes id="a00040" name="canonical_string.h" local="yes" imported="no">canonical_string.h</includes>
    <includes id="a00073" name="integer_constant.h" local="yes" imported="no">integer_constant.h</includes>
    <class kind="struct">eval_result</class>
    <member kind="define">
      <type>#define</type>
      <name>EVAL_RESULT_INITOR</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga08ad0a439e74b2ba656a8f5e4d07c245</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_FLAGS</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga3f90f870358f306934a123d803b43184</anchor>
      <arglist>(eval_result, bits)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_FLAGS_IF</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga42d2e9cd28793a6fcc8c23be0e3bfa76</anchor>
      <arglist>(cond, eval_result, bits)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>CLEAR_FLAGS</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga4919b7b0eb3d13000072168f832a8fe9</anchor>
      <arglist>(eval_result, bits)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>CLEAR_FLAGS_IF</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga1bc2dbc35490f99fbae5f6ad893468cc</anchor>
      <arglist>(cond, eval_result, bits)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>FLIP_FLAGS</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gada656c856c183a68b1eb75585d357276</anchor>
      <arglist>(eval_result, bits)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>FLAGS_IN</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga2328198359d37573e1126921cda6fbcf</anchor>
      <arglist>(eval_result, bits)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>AFFIRM_FLAGS</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga7282f191d1cc9c319836026f7bb713ba</anchor>
      <arglist>(eval_result, bits)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DENY_FLAGS</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga88d6e0407153423eb65e6453469407ff</anchor>
      <arglist>(eval_result, bits)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IS_TRUE</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga761883b1a7c802a6e980c7689595db26</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IS_FALSE</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gae7a495e2808167a83fbc6374afa5e0c0</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IS_CONST</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gae33373fe8b9bc7a5c31283d5500277d8</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>INT_WIDTH</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga7871d945e2a0f19aee50432bbd89eb51</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>UNRESOLVED</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gaa92f13d3b833f21e0345bcc195a5068e</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>RESOLVED</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gaad6c0f0aa59e9fcf06d4b952c97083f3</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_REPORTED</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga0853e206c15a7a353ba4bfcd63115abb</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>REPORTED</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gaaa95adc06a74bc8d81509aa51cb0c4d9</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DEL_PAREN</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga6a48ac87890169a2d17ab1daca5db5e7</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_DEL_PAREN</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gad5d1f2fd53a846d656945274176617ea</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_KEEP_PAREN</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga94eff8aa1a2695d739e0311547e44b47</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>KEEP</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gabac86ad74b519f2a290a3a5499def92c</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_KEEP</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga25f6c4e6f322c6f69bda05b1b63277cb</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>KEEP_CONST</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gaac1dd2956ede97cbbb13f818124e8776</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_KEEP_CONST</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga902623a7a52782d2ebbffaa435476629</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_CONST</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga67f92fd5c38a1da860db8ad26d370094</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_ILLEGAL</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga6f3e6b023d59fa829921587f9300b34a</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_LEGAL</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga7ef1c6f0844c4e922a1aee2696f4afed</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>ILLEGAL</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gaa7581bd94c83e1a854180d44867ad99e</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>LEGAL</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gac6f04077029e732f9d27a768e9e5679f</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_UNRESOLVED</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga4ddcab800ac2481ab10b3d1b3192f934</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_INSOURCE_SYM</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga318482413a496dc3d73b2a379065317c</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>INSOURCE_SYM</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga42da682b682b7b18fc61abd8167f9cce</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_GLOBAL_SYM</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga6aba1fb92dae674ba5110913ff4bdf24</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>GLOBAL_SYM</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga4e2a2f608bdd44a06ab9a1e2af42f236</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="typedef">
      <type>struct eval_result</type>
      <name>eval_result_t</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga9d323f51092ec38c7edb29bedc0b7fe4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>eval_flags</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga32b0ee28e25ceb932fe1f65268541f70</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_PENDING</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70a05dffc3d31f02e12a6c3b43ab2771122</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_CONST</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70aabad7c345f43b12ceeb0e1f9eb701022</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_KEEP</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70a3399875c83a70766401a6e2267e1fc65</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_KEEP_CONST</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70a71a7e40c411b4e07dbc70d59784daa81</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_DEL_PAREN</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70a784a92e6d0bb9798aa7b8167da872381</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_TRUE</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70a590d6a2089472014cd56d1ef2fa10a12</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_FALSE</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70a16dba859e68c1fc01555f97f5483aaa9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_ILLEGAL</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70a07fa53025e1f9e7ec4eb7149a388cd2a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_INSOURCE_SYM</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70ad406e4e9128b2021c9aff904aca9a6f3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_GLOBAL_SYM</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70ac4b814eb7eed6f3b66807482f1abeacd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_REPORTED_SYM</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70ab9b7f589dccc78648cc92d85049b5d6e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_RESOLVED</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70a93397fa7a837a3ba57173fd884de95cf</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_PARSED</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70a745ea01b08325d99ffedfccd3f3a0c2e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>line_type_t</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga0c6844b4ac7b26713d1b8d8f1ce896df</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_IF</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfa0294e9910bfeb09ffff84ce5086842e0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_TRUE</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfa646d2bb88b70f043a1bb99b5a07c5355</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_FALSE</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfabc191cb00df36d0090d5af59a791c716</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_ELIF</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfa4bfc3699389ad7dce4c6c73ad31d6b13</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_ELTRUE</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfa30a90443e84ce16580ac5323fb343886</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_ELFALSE</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfa4a8ee07d55e0c5dc03045d800dbe9d38</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_ELSE</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfafbfcaae875d7b0d57757ed6cc0c6f73e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_ENDIF</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfa41d5bc4a3ca8214326c01eaa7bec8d11</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_PLAIN</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfafe90a6a5718c5f88080400d2161bb58c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_EOF</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfa32fbb04008b92ea660be2c5e51a65d23</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_DIRECTIVE_DROP</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfa05292a96476d384c1a366e6b26b243f6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_DIRECTIVE_KEEP</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfa525b141fd729d0336e94f44dc24091ab</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_SENTINEL</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfa347cfbaaa814fe87024950345fae1252</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>eval_result_set_value</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gaac7f8c5270b1a47c2b23aa35e976de3e</anchor>
      <arglist>(eval_result_t *result, int_spec_t const *int_spec)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>eval_result_clear</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gada8f020b0582af2c597eac9cb1b801d5</anchor>
      <arglist>(eval_result_t *result)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>eval_result_parsed</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga81df7aba04fc2af46df4ee8416a02fd7</anchor>
      <arglist>(eval_result_t *result)</arglist>
    </member>
    <member kind="variable">
      <type>int_spec_t const</type>
      <name>int_spec_false</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga46dbf0c04d60e6e88d99d7901068493d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int_spec_t const</type>
      <name>int_spec_true</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gafbd0c4283552997b95e781a225a0b0bf</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>evaluator.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00054</filename>
    <includes id="a00055" name="evaluator.h" local="yes" imported="no">evaluator.h</includes>
    <includes id="a00077" name="io.h" local="yes" imported="no">io.h</includes>
    <includes id="a00083" name="line_edit.h" local="yes" imported="no">line_edit.h</includes>
    <includes id="a00042" name="chew.h" local="yes" imported="no">chew.h</includes>
    <includes id="a00037" name="args.h" local="yes" imported="no">args.h</includes>
    <includes id="a00046" name="contradiction.h" local="yes" imported="no">contradiction.h</includes>
    <includes id="a00069" name="if_control.h" local="yes" imported="no">if_control.h</includes>
    <includes id="a00044" name="configured_symbols.h" local="yes" imported="no">configured_symbols.h</includes>
    <includes id="a00103" name="unconfigured_symbols.h" local="yes" imported="no">unconfigured_symbols.h</includes>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <includes id="a00071" name="includes_tally.h" local="yes" imported="no">includes_tally.h</includes>
    <includes id="a00085" name="line_select.h" local="yes" imported="no">line_select.h</includes>
    <includes id="a00050" name="directives_tally.h" local="yes" imported="no">directives_tally.h</includes>
    <includes id="a00079" name="lexicon.h" local="yes" imported="no">lexicon.h</includes>
    <class kind="struct">evaluator_state_s</class>
    <class kind="struct">operation</class>
    <class kind="struct">co_precedent_ops</class>
    <member kind="typedef">
      <type>evaluator_state_t</type>
      <name>evaluator_public_state_t</name>
      <anchorfile>a00173.html</anchorfile>
      <anchor>gae22f2a6becf0833ac0b4ca65277551b5</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>eval_result_t(</type>
      <name>evaluator_t</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga1915d93e692163f981cfac268c33b121</anchor>
      <arglist>)(struct co_precedent_ops const *ops, char const **, struct operation const **pbin_op)</arglist>
    </member>
    <member kind="typedef">
      <type>struct evaluator_state_s</type>
      <name>evaluator_state_t</name>
      <anchorfile>a00173.html</anchorfile>
      <anchor>ga2940d439a44fce05442b1bcd235abe77</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>evaluator_initor</name>
      <anchorfile>a00173.html</anchorfile>
      <anchor>ga85ec8c764253a8ff7eb9a95359d4cfa8</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>evaluator_finitor</name>
      <anchorfile>a00173.html</anchorfile>
      <anchor>ga40e264f4d9de3541a85f31478ac2dbfa</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>integer_binary_op</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga88ec5cd391cbf8a2ddf82b7136e81d16</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs, integer_bin_op_t op)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_lt</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga07542dca36a89eb15c15d9dcd103cc9d</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_gt</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga5d466502fa1077a82791e06f46b27670</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_le</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga0889ebc0d3ac3aa6757622b65ef31ab7</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_ge</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga60b8fcfeca56f2444637441fa5ee12eb</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_eq</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga8894ee0e4a7cf958b7ed3eb47637b4a5</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_ne</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga07666f9fb20f4160cfcaec8cf7d5a7f5</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_or</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga2606345f27281a6600b0179ca674b566</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_and</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>gaccebdc495117a4cc3e6e86f470c40207</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_bit_and</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga8cb0362dc666775dbba681a33e770724</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_bit_or</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>gac176bb2100e21f36c05081340825fee6</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_bit_xor</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga4871614610968e1b2141c38523707e13</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_lshift</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga504807125b2c3217ffd886602034434a</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_rshift</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga728520bae99e4862eea577882b55c651</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_add</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga1b62c8e3e39ec339f1367fcf70a2e061</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_subtract</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga402c49edf8c8c46b423b9a9d0e94320a</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_mult</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga48486987a2a08f8b30c0af506948ccd8</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_divide</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>gaba01d297f4c016d2e9217680fb869d4d</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_mod</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>gacde9cd0644a35b222ccba5af99559698</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>eval_unary</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga6ac98022666328b3750ce13465a0c13b</anchor>
      <arglist>(struct co_precedent_ops const *ops, char const **cpp, struct operation const **ignored)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>eval_table</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga724625f96576003b3e76964c579b31e9</anchor>
      <arglist>(struct co_precedent_ops const *ops, char const **cpp, struct operation const **pbin_op)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static char const *</type>
      <name>short_circuit_and</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga9f68ec1b88b503185edc4a84ad22a468</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static char const *</type>
      <name>short_circuit_or</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>gae9895b8abdad886b35de6f970d09cd52</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>eval_if</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>gab4282eef5a4f9f7df8f96944d7f8a884</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static line_type_t</type>
      <name>eval_hash_define</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>gaabb2474a294b4c8c16f000a659579cb7</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static line_type_t</type>
      <name>eval_hash_undef</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga998a30d03a02572fc1e92799d77d924e</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>eval_possible_symbol</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga184e95bce72bcc6c20bec7d129ca11b7</anchor>
      <arglist>(char const **cpp, directive_type_t context)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static line_type_t</type>
      <name>eval_hash_include</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>gaaba4c3bd9335aca39797526980be7dbd</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static char const *</type>
      <name>eval_free_form_directive</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>gaad0862583eede15f708ec1107601ea23</anchor>
      <arglist>(char const *cp, directive_type_t directive_type)</arglist>
    </member>
    <member kind="function">
      <type>line_type_t</type>
      <name>eval_line</name>
      <anchorfile>a00171.html</anchorfile>
      <anchor>ga3c17d26ddcb686cfb4a9dc1e5b62cee0</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>eval_result_t</type>
      <name>eval_definition_text</name>
      <anchorfile>a00171.html</anchorfile>
      <anchor>ga3d5477b216f1b6960d4f79a26d462898</anchor>
      <arglist>(char const **pdef)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static evaluator_state_t</type>
      <name>evaluator_state</name>
      <anchorfile>a00173.html</anchorfile>
      <anchor>gaa42a0c090745b73c93dcbaa7491578e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>evaluator_state_t *</type>
      <name>evaluator_h</name>
      <anchorfile>a00173.html</anchorfile>
      <anchor>ga2583aa645fc323c7fa48c5cc530a95f0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>evaluator_public_state_t *</type>
      <name>evaluator_public_h</name>
      <anchorfile>a00173.html</anchorfile>
      <anchor>ga37912d6edf09f15a435eda4671d6463c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const evaluator_state_t *const</type>
      <name>evaluator_static_initialiser_h</name>
      <anchorfile>a00173.html</anchorfile>
      <anchor>gabfc5366e2f1db2662fd2e635fb68b4bb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>evaluator_init_h</name>
      <anchorfile>a00173.html</anchorfile>
      <anchor>ga7a725e21d2a39bde7e47f92f012cdb89</anchor>
      <arglist>)(evaluator_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>evaluator_finis_h</name>
      <anchorfile>a00173.html</anchorfile>
      <anchor>ga0d4ce8d3fd2b95cefacfab0ca5cd619a</anchor>
      <arglist>)(evaluator_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>struct co_precedent_ops const *</type>
      <name>ops_tab</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga681e1e60116a1e43da2ee7e5eefdb472</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>struct co_precedent_ops</type>
      <name>eval_ops</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>gac2d4b5acc17805a232a29ebad2a2f7c6</anchor>
      <arglist>[]</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>evaluator.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00055</filename>
    <includes id="a00098" name="state_utils.h" local="yes" imported="no">state_utils.h</includes>
    <includes id="a00053" name="eval_result.h" local="yes" imported="no">eval_result.h</includes>
    <member kind="function">
      <type>line_type_t</type>
      <name>eval_line</name>
      <anchorfile>a00171.html</anchorfile>
      <anchor>ga3c17d26ddcb686cfb4a9dc1e5b62cee0</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>eval_result_t</type>
      <name>eval_definition_text</name>
      <anchorfile>a00171.html</anchorfile>
      <anchor>ga3d5477b216f1b6960d4f79a26d462898</anchor>
      <arglist>(char const **pdef)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>evaluator_initor</name>
      <anchorfile>a00174.html</anchorfile>
      <anchor>ga85ec8c764253a8ff7eb9a95359d4cfa8</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>evaluator_finitor</name>
      <anchorfile>a00174.html</anchorfile>
      <anchor>ga40e264f4d9de3541a85f31478ac2dbfa</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>exception.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00056</filename>
    <includes id="a00057" name="exception.h" local="yes" imported="no">exception.h</includes>
    <member kind="variable">
      <type>jmp_buf</type>
      <name>exception_context</name>
      <anchorfile>a00176.html</anchorfile>
      <anchor>ga707665cb58a94350e59c96a576ce5b48</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>exceptions_enabled</name>
      <anchorfile>a00176.html</anchorfile>
      <anchor>gab673995d8080d15c76328ab81d304e2f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>exception.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00057</filename>
    <includes id="a00038" name="bool.h" local="yes" imported="no">bool.h</includes>
    <member kind="define">
      <type>#define</type>
      <name>catch</name>
      <anchorfile>a00176.html</anchorfile>
      <anchor>gaeaa14416a877d44d04c6a9914066fc49</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>throw</name>
      <anchorfile>a00176.html</anchorfile>
      <anchor>gaf2adf08121e083b08bcb498d0b542a5e</anchor>
      <arglist>(x)</arglist>
    </member>
    <member kind="variable">
      <type>jmp_buf</type>
      <name>exception_context</name>
      <anchorfile>a00176.html</anchorfile>
      <anchor>ga707665cb58a94350e59c96a576ce5b48</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>exceptions_enabled</name>
      <anchorfile>a00176.html</anchorfile>
      <anchor>gab673995d8080d15c76328ab81d304e2f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>file_tree.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00058</filename>
    <includes id="a00059" name="file_tree.h" local="yes" imported="no">file_tree.h</includes>
    <includes id="a00061" name="filesys.h" local="yes" imported="no">filesys.h</includes>
    <includes id="a00090" name="platform.h" local="yes" imported="no">platform.h</includes>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <includes id="a00099" name="swiss_army.h" local="yes" imported="no">swiss_army.h</includes>
    <class kind="struct">file_tree</class>
    <member kind="define">
      <type>#define</type>
      <name>PARENT_PENDING</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga100e3ae9305cc3b886af4a795c3928cf</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IS_UNLINKED</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga50efc3528b4b0c63175ba38110b62de7</anchor>
      <arglist>(ftree)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IS_ROOT</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gab5fb2d51968e831627a68553e417a641</anchor>
      <arglist>(ftree)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IS_FILE</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gac69b149ab8040398278747bfcdc81130</anchor>
      <arglist>(ftree)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IS_DIR</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gacd1d43511ad2cd3baa3d482d78f8388b</anchor>
      <arglist>(ftree)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>COUNT_FILES</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga219d2a4a679738298aaf950bb410d283</anchor>
      <arglist>(flags)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>COUNT_FILES_ONLY</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga046583dc71b39708f2ba70a2f651b9b5</anchor>
      <arglist>(flags)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>COUNT_DIRS</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gaad8516e19126b1bea7c0d7748a33ea3e</anchor>
      <arglist>(flags)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>COUNT_DIRS_ONLY</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gacd1677ef643ef30d403eab438cb7cd4b</anchor>
      <arglist>(flags)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>COUNT_ALL</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gaa48ad45cc09d219fe4406cd94e0e03ce</anchor>
      <arglist>(flags)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>COUNT_CHILDREN</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga293e7bb8f8d626e360f7ced54afd7827</anchor>
      <arglist>(flags)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>null_filter</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gafc691fb3761f644f0471ddbd4f3074c4</anchor>
      <arglist>(char const *leafname)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>null_callback</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga74be7f508352be12405cfc30b1b38cca</anchor>
      <arglist>(file_tree_h ft, char const *name, file_tree_traverse_state_t context)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static file_tree_h</type>
      <name>new_node</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga28faa4d05424278449257a5096e72b95</anchor>
      <arglist>(char const *leafname, size_t len)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static file_tree_h</type>
      <name>new_file_node</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga9f44a9189cc56cd79de26e4a7f01a536</anchor>
      <arglist>(char const *leafname, file_filter_t filter)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static file_tree_h</type>
      <name>get_parent</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga09ba952db9934f2613392d77e4bbd30a</anchor>
      <arglist>(file_tree_h child)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>link_in</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga6beba7c66e7be7321451b4205a61cc3d</anchor>
      <arglist>(file_tree_h parent, file_tree_h child)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>file_tree_add_symlink</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gae5370c7c75bb4201b81598d9efa2bc44</anchor>
      <arglist>(file_tree_h root, fs_dir_t parent, char const *symlink, file_tree_callback_t callback)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static file_tree_h</type>
      <name>new_dir_node</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga9f8416e770a5ad58a59e9cbc007ceb6b</anchor>
      <arglist>(file_tree_h root, char const *leafname, fs_dir_t dir, file_filter_t filter, file_tree_callback_t callback)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static file_tree_h</type>
      <name>get_root</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga111660fdf7136b58568b2620f8fdcce7</anchor>
      <arglist>(file_tree_h ft)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static file_tree_h</type>
      <name>seek_child</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga3d5dcbc691f103d3d9f5d79b7670c904</anchor>
      <arglist>(file_tree_h node, char const *childname)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static file_tree_h</type>
      <name>seek</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga90083fdaa82761ac7d12482889cfccd0</anchor>
      <arglist>(file_tree_h ft, char const **path)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static file_tree_h</type>
      <name>deepen</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gac7380d9590983cf47e5eb3f21ae308d4</anchor>
      <arglist>(file_tree_h ft, char const **path)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>traverse</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gaff03af9af848738f48023ade3e4cf81a</anchor>
      <arglist>(file_tree_h ft, file_tree_callback_t callback, char *path_start, char *path_end)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>file_tree_add_canon</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga571dd6f14088dd1cb69527f3d1e85999</anchor>
      <arglist>(file_tree_h root, char const *path, file_tree_callback_t callback)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>file_tree_init</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gac3eef437f729969c976fb68751fe5d6b</anchor>
      <arglist>(file_tree_h ft)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>file_tree_copy_init</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga3a492e689bbe51ebc447840d623e51d4</anchor>
      <arglist>(file_tree_h dest, file_tree_const_h src)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>file_tree_finis</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gad861e4271ae3a33c284c04a5267ef41a</anchor>
      <arglist>(file_tree_h ft)</arglist>
    </member>
    <member kind="function">
      <type>heap_str</type>
      <name>file_tree_name</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gab834d35a79f045afed7b0a11ab04f9af</anchor>
      <arglist>(file_tree_const_h ft)</arglist>
    </member>
    <member kind="function">
      <type>file_tree_h</type>
      <name>file_tree_new</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gac22fcc3bdc8015420174ebf6191bb36e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>file_tree_h</type>
      <name>file_tree_copy</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gad04c1b727806094aec292879efe57400</anchor>
      <arglist>(file_tree_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>file_tree_swap</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gab1f17cfc0ef283319b744ae24e68d1e7</anchor>
      <arglist>(file_tree_h lhs, file_tree_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>file_tree_assign</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga68560853294d39d6e1aa257ad0a83a3a</anchor>
      <arglist>(file_tree_h dest, file_tree_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>file_tree_equal</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gada05edd4cb68fbfdfeca0516a7eb778f</anchor>
      <arglist>(file_tree_const_h lhs, file_tree_const_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>file_tree_set_filter</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga441caf35bf350fedb670cb49af87d891</anchor>
      <arglist>(file_tree_h ft, file_filter_t filter)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>file_tree_dispose</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga1b334b8bec8131f9309a657a86b0070d</anchor>
      <arglist>(file_tree_h ft)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>file_tree_add</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga963f713882376e0f4eb7ecb5bd71daf3</anchor>
      <arglist>(file_tree_h root, char const *path, file_tree_callback_t callback)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>file_tree_traverse</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga2e02f92a97aa9cf6bc0fefe7fc3179cc</anchor>
      <arglist>(file_tree_h ft, file_tree_callback_t callback)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>file_tree_is_empty</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gafa89fdd467673d4c6ae8ed14f6c46b20</anchor>
      <arglist>(file_tree_const_h ft)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>file_tree_count</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gabba69705103f1d8e7fcf027f342a0678</anchor>
      <arglist>(file_tree_const_h ft, unsigned flags, file_tree_count_t *counter)</arglist>
    </member>
    <member kind="function">
      <type>file_tree_const_h</type>
      <name>file_tree_child</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gaec2ade10f6f7a8cc1d0ca0d8869ff8c4</anchor>
      <arglist>(file_tree_const_h ft, size_t which)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>file_tree.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00059</filename>
    <includes id="a00038" name="bool.h" local="yes" imported="no">bool.h</includes>
    <includes id="a00088" name="memory.h" local="yes" imported="no">memory.h</includes>
    <class kind="struct">file_tree_count_t</class>
    <member kind="define">
      <type>#define</type>
      <name>FT_LAST</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gae963a78af68fa871621745eb36862c95</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct file_tree *</type>
      <name>file_tree_h</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gac38541339071b6f91f10a2fc783d1daa</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct file_tree const *</type>
      <name>file_tree_const_h</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gaa476cec023c213896b7c2568e92a51e7</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>file_tree_callback_t</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga399636b12caba6ca3f1a4d4dec5120dc</anchor>
      <arglist>)(file_tree_h ft, char const *name, file_tree_traverse_state_t context)</arglist>
    </member>
    <member kind="typedef">
      <type>bool(*</type>
      <name>file_filter_t</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga227049e4269a073f508d9ba445c78a3d</anchor>
      <arglist>)(char const *leafname)</arglist>
    </member>
    <member kind="enumeration">
      <name>file_tree_traverse_state_t</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga79618feefef9463cfe21ecc5a4af10f4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FT_ENTERING_DIR</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gga79618feefef9463cfe21ecc5a4af10f4a03fc722c85a31c8d32319867c0600e95</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FT_AT_FILE</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gga79618feefef9463cfe21ecc5a4af10f4a9a931614ab79e00d8b148564c98fbe2e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FT_LEAVING_DIR</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gga79618feefef9463cfe21ecc5a4af10f4a85dea30b6c6da742504fbb415b7a02f2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>file_tree_count_flags</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga02aea05b612eca3c19ad33ec7ad0980c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FT_COUNT_FILES</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gga02aea05b612eca3c19ad33ec7ad0980ca207b741c674476efc320a8fbbb521f7a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FT_COUNT_DIRS</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gga02aea05b612eca3c19ad33ec7ad0980ca230531f826f10ce9a8b81996a65bf63a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FT_COUNT_ALL</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gga02aea05b612eca3c19ad33ec7ad0980ca8658e75b2c8a4e71784f55e4e99b6658</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FT_COUNT_CHILDREN</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gga02aea05b612eca3c19ad33ec7ad0980ca5e8210d63f824091a146b661e2afee6b</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>heap_str</type>
      <name>file_tree_name</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gab834d35a79f045afed7b0a11ab04f9af</anchor>
      <arglist>(const file_tree_const_h ft)</arglist>
    </member>
    <member kind="function">
      <type>file_tree_h</type>
      <name>file_tree_new</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gac22fcc3bdc8015420174ebf6191bb36e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>file_tree_h</type>
      <name>file_tree_copy</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gad04c1b727806094aec292879efe57400</anchor>
      <arglist>(file_tree_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>file_tree_swap</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gab1f17cfc0ef283319b744ae24e68d1e7</anchor>
      <arglist>(file_tree_h lhs, file_tree_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>file_tree_assign</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga68560853294d39d6e1aa257ad0a83a3a</anchor>
      <arglist>(file_tree_h dest, file_tree_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>file_tree_equal</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gada05edd4cb68fbfdfeca0516a7eb778f</anchor>
      <arglist>(file_tree_const_h lhs, file_tree_const_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>file_tree_set_filter</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga441caf35bf350fedb670cb49af87d891</anchor>
      <arglist>(file_tree_h ft, file_filter_t filter)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>file_tree_add</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga963f713882376e0f4eb7ecb5bd71daf3</anchor>
      <arglist>(file_tree_h parent, char const *path, file_tree_callback_t callback)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>file_tree_dispose</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga1b334b8bec8131f9309a657a86b0070d</anchor>
      <arglist>(file_tree_h ft)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>file_tree_traverse</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga2e02f92a97aa9cf6bc0fefe7fc3179cc</anchor>
      <arglist>(file_tree_h ft, file_tree_callback_t callback)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>file_tree_is_empty</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gafa89fdd467673d4c6ae8ed14f6c46b20</anchor>
      <arglist>(file_tree_const_h ft)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>file_tree_count</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gabba69705103f1d8e7fcf027f342a0678</anchor>
      <arglist>(file_tree_const_h ft, unsigned flags, file_tree_count_t *counter)</arglist>
    </member>
    <member kind="function">
      <type>file_tree_const_h</type>
      <name>file_tree_child</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gaec2ade10f6f7a8cc1d0ca0d8869ff8c4</anchor>
      <arglist>(file_tree_const_h ft, size_t which)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>filesys.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00060</filename>
    <includes id="a00061" name="filesys.h" local="yes" imported="no">filesys.h</includes>
    <includes id="a00090" name="platform.h" local="yes" imported="no">platform.h</includes>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <member kind="function">
      <type>heap_str</type>
      <name>fs_compose_filename</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga95bd46ca33c9a56c8d6c325be30b869c</anchor>
      <arglist>(char const *path, char const *leafname)</arglist>
    </member>
    <member kind="function">
      <type>fs_obj_type_t</type>
      <name>fs_file_or_dir</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga8983e088a70c870190a096528fa4531d</anchor>
      <arglist>(char const *name)</arglist>
    </member>
    <member kind="function">
      <type>char *</type>
      <name>fs_tempname</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga0ac078f54030a31d013b42ec82f157f0</anchor>
      <arglist>(char *template)</arglist>
    </member>
    <member kind="function">
      <type>fs_path_type_t</type>
      <name>fs_path_type</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gacbd04662f04d93e5b5028b77ff8c42db</anchor>
      <arglist>(char const *filename)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>fs_path_comp</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gaf9d2d46706e7d7856647d25803c4290e</anchor>
      <arglist>(char const *first, char const *second, size_t *sharedlen)</arglist>
    </member>
    <member kind="function">
      <type>heap_str</type>
      <name>fs_split_filename</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga87952f6ae695ee494eaba18010ca67c7</anchor>
      <arglist>(char const *path, char **leafname)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>filesys.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00061</filename>
    <includes id="a00089" name="opts.h" local="yes" imported="no">opts.h</includes>
    <includes id="a00088" name="memory.h" local="yes" imported="no">memory.h</includes>
    <member kind="define">
      <type>#define</type>
      <name>fs_absolute_path</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga1f45ba8a780dee01a71494a305c5cf9a</anchor>
      <arglist>(pathtype)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>fs_unix_path</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga15d4c0690be81c46fbf958e1951e8509</anchor>
      <arglist>(pathtype)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>fs_windows_path</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gaedd4da4fe5b4a35d958b24921248601f</anchor>
      <arglist>(pathtype)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>fs_dangling_path</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gae2041e52bfc997c967bd7e4651dd0415</anchor>
      <arglist>(pathtype)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>fs_root_path</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga7dd02fe2bb9d05bd501bd905a095c0ba</anchor>
      <arglist>(pathtype)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>FS_IS_FILE</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gaf3e55d8a31e277ff3e9707d4927427c8</anchor>
      <arglist>(objtype)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>FS_IS_DIR</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga93d31beabf1989ec24db78c77948c7b1</anchor>
      <arglist>(objtype)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>FS_IS_SLINK</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga67c44c5484237991be1a9105ba108723</anchor>
      <arglist>(objtype)</arglist>
    </member>
    <member kind="typedef">
      <type>void *</type>
      <name>fs_dir_t</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga6d482078e0987fdb2bdf2825873d52f3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>fs_obj_type_t</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga3b9f4639eeb712c5271cfee671ff0ef7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FS_OBJ_NONE</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gga3b9f4639eeb712c5271cfee671ff0ef7ac23779627c0e5793a06a8d3ab490d4b2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FS_OBJ_SLINK</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gga3b9f4639eeb712c5271cfee671ff0ef7ae19f1bfc269cb5fd12e7107d1be0f2d2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FS_OBJ_FILE</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gga3b9f4639eeb712c5271cfee671ff0ef7a6560439d14c3d4610cbcb07c3ffd369b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FS_OBJ_DIR</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gga3b9f4639eeb712c5271cfee671ff0ef7a1175314458e2d6d2dbc95b48e3fa2412</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>fs_path_type_t</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gabb4fb314bdef635e01cb17e9ab875a98</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FS_ABS_PATH</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ggabb4fb314bdef635e01cb17e9ab875a98a2e46a4fd936e85f055227ee13fbb8c2d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FS_UNIX_PATH</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ggabb4fb314bdef635e01cb17e9ab875a98abd82bfccf13eaec18bfac53ef94b63d5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FS_WIN_PATH</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ggabb4fb314bdef635e01cb17e9ab875a98a97c702537df6fb737222e8cc6183d09b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FS_DANGLING_PATH</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ggabb4fb314bdef635e01cb17e9ab875a98a0888de3d3f43a36486cb5f671e0d9e0a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FS_ROOT_PATH</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ggabb4fb314bdef635e01cb17e9ab875a98a199d7f029ee25d3fe047931b121dc2e1</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>fs_obj_type_t</type>
      <name>fs_obj_type</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga53d4bbf792ddaed90f8413a5956d8239</anchor>
      <arglist>(char const *name)</arglist>
    </member>
    <member kind="function">
      <type>fs_obj_type_t</type>
      <name>fs_file_or_dir</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga8983e088a70c870190a096528fa4531d</anchor>
      <arglist>(char const *name)</arglist>
    </member>
    <member kind="function">
      <type>fs_dir_t</type>
      <name>fs_open_dir</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gaa88dd1c23bfc5043ad343c5b3fb6d6bc</anchor>
      <arglist>(char const *dirname, fs_dir_t const parent)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>fs_close_dir</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga5bf17384e2fd93fd5970504620c64b32</anchor>
      <arglist>(fs_dir_t dir)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>fs_read_dir</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gab23a2d32c04395cfed634e4e79f9ff9b</anchor>
      <arglist>(fs_dir_t dir, char const **fullname)</arglist>
    </member>
    <member kind="function">
      <type>fs_dir_t</type>
      <name>fs_get_parent</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga2ce9270a3e9b1dda53913f326fdb5e34</anchor>
      <arglist>(fs_dir_t dir)</arglist>
    </member>
    <member kind="function">
      <type>heap_str</type>
      <name>fs_compose_filename</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga95bd46ca33c9a56c8d6c325be30b869c</anchor>
      <arglist>(char const *path, char const *leafname)</arglist>
    </member>
    <member kind="function">
      <type>heap_str</type>
      <name>fs_split_filename</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga87952f6ae695ee494eaba18010ca67c7</anchor>
      <arglist>(char const *path, char **leafname)</arglist>
    </member>
    <member kind="function">
      <type>heap_str</type>
      <name>fs_real_path</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga892e9c9a60ed46c9391eab2e3ef900c9</anchor>
      <arglist>(char const *relname, size_t *namelen)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>fs_cur_dir_entry</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gaecc8b6d2c8c74d904412eddda7c4d396</anchor>
      <arglist>(fs_dir_t dir, char const **entry)</arglist>
    </member>
    <member kind="function">
      <type>fs_path_type_t</type>
      <name>fs_path_type</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gacbd04662f04d93e5b5028b77ff8c42db</anchor>
      <arglist>(char const *filename)</arglist>
    </member>
    <member kind="function">
      <type>char *</type>
      <name>fs_tempname</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga0ac078f54030a31d013b42ec82f157f0</anchor>
      <arglist>(char *template)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>fs_path_comp</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gaf9d2d46706e7d7856647d25803c4290e</anchor>
      <arglist>(char const *first, char const *second, size_t *sharedlen)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>fs_nix.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00062</filename>
    <includes id="a00090" name="platform.h" local="yes" imported="no">platform.h</includes>
    <includes id="a00061" name="filesys.h" local="yes" imported="no">filesys.h</includes>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <class kind="struct">fs_dir_nix</class>
    <member kind="typedef">
      <type>struct fs_dir_nix</type>
      <name>fs_dir_nix_t</name>
      <anchorfile>a00180.html</anchorfile>
      <anchor>ga23c72f91e55c54cac7f4dd261a44740f</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>heap_str</type>
      <name>fs_real_path</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga892e9c9a60ed46c9391eab2e3ef900c9</anchor>
      <arglist>(char const *relname, size_t *namelen)</arglist>
    </member>
    <member kind="function">
      <type>fs_obj_type_t</type>
      <name>fs_obj_type</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga53d4bbf792ddaed90f8413a5956d8239</anchor>
      <arglist>(char const *name)</arglist>
    </member>
    <member kind="function">
      <type>fs_dir_t</type>
      <name>fs_open_dir</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gaa88dd1c23bfc5043ad343c5b3fb6d6bc</anchor>
      <arglist>(char const *dirname, fs_dir_t const parent)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>fs_close_dir</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga5bf17384e2fd93fd5970504620c64b32</anchor>
      <arglist>(fs_dir_t dir)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>fs_read_dir</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gab23a2d32c04395cfed634e4e79f9ff9b</anchor>
      <arglist>(fs_dir_t dir, char const **fullname)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>fs_cur_dir_entry</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gaecc8b6d2c8c74d904412eddda7c4d396</anchor>
      <arglist>(fs_dir_t dir, char const **entry)</arglist>
    </member>
    <member kind="function">
      <type>fs_dir_t</type>
      <name>fs_get_parent</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga2ce9270a3e9b1dda53913f326fdb5e34</anchor>
      <arglist>(fs_dir_t dir)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>fs_win.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00063</filename>
    <includes id="a00090" name="platform.h" local="yes" imported="no">platform.h</includes>
    <includes id="a00061" name="filesys.h" local="yes" imported="no">filesys.h</includes>
    <includes id="a00088" name="memory.h" local="yes" imported="no">memory.h</includes>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <class kind="struct">fs_dir_win</class>
    <member kind="typedef">
      <type>struct fs_dir_win</type>
      <name>fs_dir_win_t</name>
      <anchorfile>a00182.html</anchorfile>
      <anchor>gaecf61ab260ebb54a61a58edc5f0be5ca</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>heap_str</type>
      <name>fs_real_path</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga892e9c9a60ed46c9391eab2e3ef900c9</anchor>
      <arglist>(char const *relname, size_t *namelen)</arglist>
    </member>
    <member kind="function">
      <type>fs_obj_type_t</type>
      <name>fs_obj_type</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga53d4bbf792ddaed90f8413a5956d8239</anchor>
      <arglist>(char const *name)</arglist>
    </member>
    <member kind="function">
      <type>fs_dir_t</type>
      <name>fs_open_dir</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gaa88dd1c23bfc5043ad343c5b3fb6d6bc</anchor>
      <arglist>(char const *dirname, fs_dir_t const parent)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>fs_close_dir</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga5bf17384e2fd93fd5970504620c64b32</anchor>
      <arglist>(fs_dir_t dir)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>fs_read_dir</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gab23a2d32c04395cfed634e4e79f9ff9b</anchor>
      <arglist>(fs_dir_t dir, char const **fullname)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>fs_cur_dir_entry</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gaecc8b6d2c8c74d904412eddda7c4d396</anchor>
      <arglist>(fs_dir_t dir, char const **entry)</arglist>
    </member>
    <member kind="function">
      <type>fs_dir_t</type>
      <name>fs_get_parent</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga2ce9270a3e9b1dda53913f326fdb5e34</anchor>
      <arglist>(fs_dir_t dir)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>get_options.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00064</filename>
    <includes id="a00065" name="get_options.h" local="yes" imported="no">get_options.h</includes>
    <member kind="function">
      <type>cmd_option_t const *</type>
      <name>get_command_option</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>gade29aa22d5eec7fd58c9b7102a066718</anchor>
      <arglist>(int argc, char *argv[], cmd_option_t const *commands)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>opts_are_compatible</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>ga48c0cc648096b20180900064f4fbb4ba</anchor>
      <arglist>(int opt_excluder, int opt_excluded, struct exclusion_list const *exclusions, bool indexed)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getopt_long</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>ga73a4f9f8a69bc6ff18c5d8c5df279159</anchor>
      <arglist>(int argc, char *argv[], const char *optstr, const struct option *longopts, int *longind)</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>get_long_opt_name</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>ga77dbb87e3a353d2bda90acf7e264d3f6</anchor>
      <arglist>(struct option const *longopts, int opt)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>get_options.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00065</filename>
    <includes id="a00038" name="bool.h" local="yes" imported="no">bool.h</includes>
    <class kind="struct">option</class>
    <class kind="struct">cmd_option</class>
    <class kind="struct">exclusion_list</class>
    <member kind="typedef">
      <type>struct cmd_option</type>
      <name>cmd_option_t</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>ga2ab69dfabef3e1ebd0dd6c5ca724c561</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>no_argument</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>gga99fb83031ce9923c84392b4e92f956b5ac5bf117fca352609d0e6cd02ddb3a008</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>required_argument</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>gga99fb83031ce9923c84392b4e92f956b5a0b017dfd3a757dbd00fbb8d62caf0e33</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>optional_argument</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>gga99fb83031ce9923c84392b4e92f956b5ab78b2ae97087d17f362530b184e3217b</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>cmd_option_t const *</type>
      <name>get_command_option</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>gade29aa22d5eec7fd58c9b7102a066718</anchor>
      <arglist>(int argc, char *argv[], cmd_option_t const *commands)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>opts_are_compatible</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>ga48c0cc648096b20180900064f4fbb4ba</anchor>
      <arglist>(int opt_excluder, int opt_excluded, struct exclusion_list const *exclusions, bool indexed)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getopt_long</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>ga73a4f9f8a69bc6ff18c5d8c5df279159</anchor>
      <arglist>(int argc, char *argv[], const char *optstr, struct option const *longopts, int *longind)</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>get_long_opt_name</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>ga77dbb87e3a353d2bda90acf7e264d3f6</anchor>
      <arglist>(struct option const *longopts, int opt)</arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>optind</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>gad5e1c16213bbee2d5e8cc363309f418c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>optopt</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>ga475b8db98445da73e5f62a1ef6324b95</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>char *</type>
      <name>optarg</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>gadb50a0eab9fed92fc3bfc7dfa4f2c410</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>hash_include.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00066</filename>
    <includes id="a00090" name="platform.h" local="yes" imported="no">platform.h</includes>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <member kind="function">
      <type>hash_include_h</type>
      <name>hash_include_new</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga3a1c9b184d701b88682568c065701cee</anchor>
      <arglist>(char const *arg, size_t arglen)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>hash_include_compare</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga879a6f4fe5311759d10d402d422e920b</anchor>
      <arglist>(hash_include_const_h lhs, void const *rhs, size_t arglen)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>hash_include_define</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga1d30822c9e58240308de02ef5d3bdf16</anchor>
      <arglist>(hash_include_h hi, canonical_string_const_h def)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>hash_include.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00067</filename>
    <includes id="a00101" name="symbol.h" local="yes" imported="no">symbol.h</includes>
    <member kind="define">
      <type>#define</type>
      <name>hash_include_dispose</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga12d42809039bcd750aa505ffe44c5d0d</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>hash_include_copy</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>gaef9981cd51bcf5ea8da3037c6375e6e7</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>hash_include_swap</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga247b07a382a2a48a4fd7da10cb327308</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>hash_include_assign</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga60bef065f21ae6ab1d84dbb8fbb60f16</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>hash_include_definition</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga138c8e9ec14ad692339cf492105013a3</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>hash_include_undefine</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga79f99b4f102873400d405a06787b2265</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>hash_include_str</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga672d292e85fefda23f8f023a537bc947</anchor>
      <arglist>(inc_arg)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>hash_include_seen</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga10a037aee6f25b19e6c5a213895da91f</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>hash_include_memorise</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga5a70030b6963a6ab61e4b1c9854ed1f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>hash_include_forget</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga1a5e569aeae040a5449afcf1073f71b1</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>symbol_h</type>
      <name>hash_include_h</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga1db975aa2c19f4976f50703c279aba37</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>symbol_const_h</type>
      <name>hash_include_const_h</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga4577505cf973106db76b47e05b3121ed</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>hash_include_h</type>
      <name>hash_include_new</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga3a1c9b184d701b88682568c065701cee</anchor>
      <arglist>(char const *arg, size_t arglen)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>hash_include_define</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga1d30822c9e58240308de02ef5d3bdf16</anchor>
      <arglist>(hash_include_h hi, canonical_string_const_h def)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>hash_include_compare</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga879a6f4fe5311759d10d402d422e920b</anchor>
      <arglist>(hash_include_const_h lhs, void const *rhs, size_t namelen)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>hash_include_parse</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga76fe93c491d12b3b59d1cd27d97c2c6a</anchor>
      <arglist>(char const *cp, char const **pdiagnostic, canonical_string_h *presolved_val)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>hash_include_changed</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga5d2caceef9e27bb058a98345f9a26bdd</anchor>
      <arglist>(hash_include_const_h inc_arg)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>hash_include_commit_evaluation</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>gae485d6e3804b06bbb2237fe1fc0e7e45</anchor>
      <arglist>(hash_include_h inc_arg)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>hash_include_valid</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>gad675daf355c1b10cd88daf2a8fbbec75</anchor>
      <arglist>(hash_include_const_h inc_arg)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>if_control.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00068</filename>
    <includes id="a00069" name="if_control.h" local="yes" imported="no">if_control.h</includes>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <includes id="a00083" name="line_edit.h" local="yes" imported="no">line_edit.h</includes>
    <includes id="a00081" name="line_despatch.h" local="yes" imported="no">line_despatch.h</includes>
    <includes id="a00042" name="chew.h" local="yes" imported="no">chew.h</includes>
    <includes id="a00077" name="io.h" local="yes" imported="no">io.h</includes>
    <class kind="struct">if_control_state_s</class>
    <member kind="define">
      <type>#define</type>
      <name>MAXDEPTH</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga0a852ddde438845110943cb3e2a0beea</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>void</type>
      <name>transition_t</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>gaaaee91505912956e4594a1372b1d0b35</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="typedef">
      <type>if_control_state_t</type>
      <name>if_control_public_state_t</name>
      <anchorfile>a00163.html</anchorfile>
      <anchor>ga5fc0d1b463963d6292e27016102021e3</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct if_control_state_s</type>
      <name>if_control_state_t</name>
      <anchorfile>a00163.html</anchorfile>
      <anchor>gad58f3ea91d9e5fa9cfe9f67662cf936d</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>done_file</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga80ff22e8f34b4a2bbf69f27ecfb019db</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>nest</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>gad2fe96b6b85ef29bc4d4c114cc8189c8</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>set_state</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga091be11ac59d7239e858c1654c6ad561</anchor>
      <arglist>(if_state_t is)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Strue</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga33404569dac4a1298bd092ea2a43c3d2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Sfalse</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>gabda3e5cb9733a5e049335332f9118ef5</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Selse</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga2aee74f9f9c3bed76c952ce6121aceed</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Pelif</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga6c1b4d367ebe97a62ea7312ab51dcb89</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Pelse</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga297074614fd7a4df578e5c99c2ed384c</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Pendif</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga0382d21c8aed375f6bfa52d224074489</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Dfalse</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga994d57c20598ed5bff783c35a8d86c96</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Delif</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>gaaef74818f33555adb96256ed4ad424b0</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Delse</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga2e60cf884d4fe491aeecd820a3455e0b</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Dendif</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga718d0f137e15935d4d61ee5ef8c872c1</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Fdrop</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga1f1b82a8b507a09c715b1ee070b44eb8</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Fpass</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga51ec8fdc2090dbdc6bbb7ad9a04bfe87</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Ftrue</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga38dc80dc501666e83b359b571cca5d4d</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Ffalse</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga21bfe9c45c6a16a8197b639eec6939dc</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Mpass</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga16ecc6b9a0b6a9dab35d08f0cad4a936</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Mtrue</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>gae20503334149b49a222032ce8a9d7868</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Melif</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga4297180321ea13ad3014353ab12b26d3</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Melse</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga0f83b7382f9dd72ec7ead9aee2bc040e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>if_control_initor</name>
      <anchorfile>a00163.html</anchorfile>
      <anchor>gab14b550a2dc3ec4767566fd3b15a2fd1</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>if_control_finitor</name>
      <anchorfile>a00163.html</anchorfile>
      <anchor>ga3dfcb38a2c2b037b5a408f086be3f7ee</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>transition</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga1b85d8604598528474931d5a0cc15b05</anchor>
      <arglist>(line_type_t linetype)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>dead_line</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga92896d189e473f0a3c46ed73fde61b43</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>was_unconditional_line</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga94eb78320775891f969342a4595cd9b3</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_unconditional_line</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gaa60de9d1a445fc84435997a4166f5337</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>if_state_t</type>
      <name>if_state</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga9e62a8d5385b0a27e86c02a69e66490e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>if_depth</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga419c9e08cb6455da20d8645ccf75a336</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>if_start_line</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga113bb6a3c9c49189fc657faf3211f0bc</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>if_control_toplevel</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga452e52b995fdecce3de0370b331bf01f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static transition_t *const</type>
      <name>transition_table</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga0a5271e6859ae6a68a00f3e12dbc72ba</anchor>
      <arglist>[IF_STATE_COUNT][LT_SENTINEL]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static if_control_state_t</type>
      <name>if_control_state</name>
      <anchorfile>a00163.html</anchorfile>
      <anchor>ga4f9ae30c0a7ef1a45b0da68b10b1755d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>if_control_state_t *</type>
      <name>if_control_h</name>
      <anchorfile>a00163.html</anchorfile>
      <anchor>ga4bf48f6c393e3404c0a1065d62cc4204</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>if_control_public_state_t *</type>
      <name>if_control_public_h</name>
      <anchorfile>a00163.html</anchorfile>
      <anchor>ga861a37004fcd0966db6cb85d96701e39</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const if_control_state_t *const</type>
      <name>if_control_static_initialiser_h</name>
      <anchorfile>a00163.html</anchorfile>
      <anchor>ga3c87988e2a8f99b32229e24e37cc0bee</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>if_control_init_h</name>
      <anchorfile>a00163.html</anchorfile>
      <anchor>ga77cfb0da253f52ccde0ec58fdd7951b5</anchor>
      <arglist>)(if_control_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>if_control_finis_h</name>
      <anchorfile>a00163.html</anchorfile>
      <anchor>ga7de311f720fb28d2b2b7795d65711f65</anchor>
      <arglist>)(if_control_state_t *)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>if_control.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00069</filename>
    <includes id="a00055" name="evaluator.h" local="yes" imported="no">evaluator.h</includes>
    <member kind="enumeration">
      <name>if_state_t</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga966ab06d8043ad6eccc224b6e1a48cfb</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_OUTSIDE</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfbad918ba98c468eae0b4fed1afd0fb9de9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_FALSE_PREFIX</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfbaad3cf5e4005ddf678af9484e666303e8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_TRUE_PREFIX</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfba929e2b73471966e6e6698597da7e6757</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_PASS_MIDDLE</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfba5ae1065c0728c2aac31cd87a79d1e262</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_FALSE_MIDDLE</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfbac669e8c59945b7507a6cc0586c7e2786</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_TRUE_MIDDLE</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfbaa8e38e48e57a2e8072d5c7a6b18d9fa8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_PASS_ELSE</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfbacdde1573e97bcbed36407c10be915f52</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_FALSE_ELSE</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfbae8346582ff69dc7de186051d8af60995</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_TRUE_ELSE</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfba33e2b4d465ecdc260e2e1e6e24db295c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_FALSE_TRAILER</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfbad3a918eb61209478da87e6da31bcad30</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_COUNT</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfba7e3b41acfdec723baf053efdb5f429dd</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>transition</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga1b85d8604598528474931d5a0cc15b05</anchor>
      <arglist>(line_type_t linetype)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>dead_line</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga92896d189e473f0a3c46ed73fde61b43</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>was_unconditional_line</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga94eb78320775891f969342a4595cd9b3</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_unconditional_line</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gaa60de9d1a445fc84435997a4166f5337</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>if_start_line</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga113bb6a3c9c49189fc657faf3211f0bc</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>if_depth</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga419c9e08cb6455da20d8645ccf75a336</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>if_state_t</type>
      <name>if_state</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga9e62a8d5385b0a27e86c02a69e66490e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>if_control_toplevel</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga452e52b995fdecce3de0370b331bf01f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>if_control_initor</name>
      <anchorfile>a00164.html</anchorfile>
      <anchor>gab14b550a2dc3ec4767566fd3b15a2fd1</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>if_control_finitor</name>
      <anchorfile>a00164.html</anchorfile>
      <anchor>ga3dfcb38a2c2b037b5a408f086be3f7ee</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>includes_tally.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00070</filename>
    <includes id="a00071" name="includes_tally.h" local="yes" imported="no">includes_tally.h</includes>
    <includes id="a00037" name="args.h" local="yes" imported="no">args.h</includes>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <member kind="typedef">
      <type>includes_tally_public_state_t</type>
      <name>includes_tally_state_t</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>gacec5392149a0cb3ca350cb4de66369a3</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>includes_tally_initor</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>gab896425ca30b7e82405fa1411692a906</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>includes_tally_finitor</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>ga3604f1c53a510d69c1b29a4cacf0fc72</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>includes_tally_init</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>ga40b7a909267cd143efd4fcfbf575b02b</anchor>
      <arglist>(includes_tally_state_t *)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>includes_tally_finis</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>gab959a0e9f110fd6fe57c53ae680a0d8c</anchor>
      <arglist>(includes_tally_state_t *)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static hash_include_h</type>
      <name>hash_include_lookup</name>
      <anchorfile>a00204.html</anchorfile>
      <anchor>gaf34cfc6bde04aab3451d27536e0bda96</anchor>
      <arglist>(char const *arg, size_t arglen)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>hash_include_add</name>
      <anchorfile>a00204.html</anchorfile>
      <anchor>ga97c9d28b3ec50467e8da7d368fe357f9</anchor>
      <arglist>(hash_include_h inc_arg)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>hash_include_tally</name>
      <anchorfile>a00202.html</anchorfile>
      <anchor>ga0dad527b2925127eb69b341d315d3d3e</anchor>
      <arglist>(char const *arg, size_t arglen, canonical_string_const_h sym_def)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static includes_tally_state_t</type>
      <name>includes_tally_state</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>ga851a7765268cdcb96c49ef567829bde7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>includes_tally_state_t *</type>
      <name>includes_tally_h</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>ga347fd07e7dc04ba0b8b9158ef28635a4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>includes_tally_public_state_t *</type>
      <name>includes_tally_public_h</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>ga58d577e8c55c7e701836f02cdab89144</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const includes_tally_state_t *const</type>
      <name>includes_tally_static_initialiser_h</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>ga253e8f9332598043ab2ba7b6275cdb16</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>includes_tally_init_h</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>ga849fddd39f25b73c9624ceea4da634a1</anchor>
      <arglist>)(includes_tally_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>includes_tally_finis_h</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>ga2ef7a1546b6271e091be204e00542e7f</anchor>
      <arglist>)(includes_tally_state_t *)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>includes_tally.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00071</filename>
    <includes id="a00098" name="state_utils.h" local="yes" imported="no">state_utils.h</includes>
    <includes id="a00092" name="ptr_set.h" local="yes" imported="no">ptr_set.h</includes>
    <includes id="a00040" name="canonical_string.h" local="yes" imported="no">canonical_string.h</includes>
    <class kind="struct">includes_tally_public_state_s</class>
    <member kind="typedef">
      <type>struct includes_tally_public_state_s</type>
      <name>includes_tally_public_state_t</name>
      <anchorfile>a00203.html</anchorfile>
      <anchor>ga2e366e77cfe721d79d7b4f4b681ee841</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>hash_include_tally</name>
      <anchorfile>a00202.html</anchorfile>
      <anchor>ga0dad527b2925127eb69b341d315d3d3e</anchor>
      <arglist>(char const *arg, size_t arglen, canonical_string_const_h sym_val)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>includes_tally_initor</name>
      <anchorfile>a00203.html</anchorfile>
      <anchor>gab896425ca30b7e82405fa1411692a906</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>includes_tally_finitor</name>
      <anchorfile>a00203.html</anchorfile>
      <anchor>ga3604f1c53a510d69c1b29a4cacf0fc72</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>includes_tally_public_state_t *</type>
      <name>includes_tally_public_h</name>
      <anchorfile>a00203.html</anchorfile>
      <anchor>ga58d577e8c55c7e701836f02cdab89144</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>integer_constant.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00072</filename>
    <includes id="a00073" name="integer_constant.h" local="yes" imported="no">integer_constant.h</includes>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <includes id="a00042" name="chew.h" local="yes" imported="no">chew.h</includes>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>char_escape_val</name>
      <anchorfile>a00225.html</anchorfile>
      <anchor>gab4154744c0ae922b615954557672649e</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static unsigned long long</type>
      <name>decode_utf8</name>
      <anchorfile>a00225.html</anchorfile>
      <anchor>ga491b8d5611111a28ac1df6fe19d681f7</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static unsigned long long</type>
      <name>eval_numeral_helper</name>
      <anchorfile>a00225.html</anchorfile>
      <anchor>ga867c94be49004d6a2592cdddde2cb3dd</anchor>
      <arglist>(char const **pnum, unsigned int base, bool *overflow)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static unsigned long long</type>
      <name>eval_numerical_character_constant</name>
      <anchorfile>a00225.html</anchorfile>
      <anchor>ga6b40d5023942ec5d868774409fb387d5</anchor>
      <arglist>(char const **cpp, int base)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static unsigned long long</type>
      <name>eval_octal_character_constant</name>
      <anchorfile>a00225.html</anchorfile>
      <anchor>ga50488db79c3df5b4419ed1b8875b0738</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static unsigned long long</type>
      <name>eval_hex_character_constant</name>
      <anchorfile>a00225.html</anchorfile>
      <anchor>gaecd3fb17c66aec650a00c7c94ad96e17</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>eval_numeral</name>
      <anchorfile>a00224.html</anchorfile>
      <anchor>ga080cd28154b64e792d76141abddf8d40</anchor>
      <arglist>(char const *num, char const **numend)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>eval_character_constant</name>
      <anchorfile>a00224.html</anchorfile>
      <anchor>ga9cf78487f2a27bb74f53d5368f26d5c0</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>integer_constant.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00073</filename>
    <includes id="a00075" name="integer_ops.h" local="yes" imported="no">integer_ops.h</includes>
    <member kind="function">
      <type>int_spec_t</type>
      <name>eval_numeral</name>
      <anchorfile>a00224.html</anchorfile>
      <anchor>ga080cd28154b64e792d76141abddf8d40</anchor>
      <arglist>(char const *num, char const **numend)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>eval_character_constant</name>
      <anchorfile>a00224.html</anchorfile>
      <anchor>ga9cf78487f2a27bb74f53d5368f26d5c0</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>integer_ops.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00074</filename>
    <includes id="a00075" name="integer_ops.h" local="yes" imported="no">integer_ops.h</includes>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>sign</name>
      <anchorfile>a00228.html</anchorfile>
      <anchor>gae6ead6bd49c75eeeb19581ebdf8f185b</anchor>
      <arglist>(int_spec_t const *int_spec)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>sign_extend</name>
      <anchorfile>a00228.html</anchorfile>
      <anchor>ga9f52943ad4e76c8d5d417b57cdef4404</anchor>
      <arglist>(int_spec_t *converted, int_spec_t const *unconverted)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>do_usual_conversions</name>
      <anchorfile>a00228.html</anchorfile>
      <anchor>ga5b7b87d42560a5612f06b580629c6fd5</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r, int_spec_t *cl, int_spec_t *cr)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>check_shift_validity</name>
      <anchorfile>a00228.html</anchorfile>
      <anchor>gae5140ce0090bb1bb86acf9ea61554a29</anchor>
      <arglist>(char const *direction, int_type type, int_spec_t const *shiftval)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>lt</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga8c7e12905e7213334a6646e5d4d37f4e</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>gt</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga837366aa8fb859764144a3f29a987655</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>le</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga83a8133cbd462fe97cdc6075be841500</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>ge</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga27dcfd7ad42b27e1d8cd11a255b71675</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>eq</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga2a0dfeb6f571b17d63be4517f5ae975c</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>ne</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga95e41a7a9d9f66ddd98ed1788f294667</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>bit_and</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga63146e4abed3add7482707a494bca738</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>bit_or</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga255f2644183abb57d1e8582d0fa5b304</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>bit_xor</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga4002187e3d53f19157167641868039df</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>complement</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga1b60a4adde057ca2ea2ae79e128787fd</anchor>
      <arglist>(int_spec_t const *int_spec)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>minus</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga1325e78e1015dece43f5faa352b43b01</anchor>
      <arglist>(int_spec_t const *int_spec)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>lshift</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gaef6dcc872591a671187edb4eb9a50e08</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>rshift</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gaf72359fe76767a4ae990d103102dad6e</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>add</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gab87f9928822bad57ee7342d8dcfcb95e</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>subtract</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gab4cb8bc9161e80d1f99e85a78b202ea2</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>multiply</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gac1743d3ea7f2297361de575bf2cf0f88</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>divide</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga7d1130c8629a0c8beb26c5649e643b66</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>modulus</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gaa7f8b4fff8b2457350065637a6d29863</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>boolean_and</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga0cebe0399b3efb90e869db8a50230393</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>boolean_or</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gaf440e77f7f3c36d3dd07b87b85a8d456</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>negate</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga6d7304db3c33f2b8b4dd9191e79d5249</anchor>
      <arglist>(int_spec_t const *int_spec)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>integer_ops.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00075</filename>
    <class kind="struct">int_spec</class>
    <member kind="define">
      <type>#define</type>
      <name>RANK</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga48e81ed309d5e54cad105bacf05dfecc</anchor>
      <arglist>(int_type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SIZEOF</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga8e701444c77375c5014cc2812f40eb1b</anchor>
      <arglist>(int_type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IS_SIGNED</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gaa689e66b0f18e6000d0e1d54ef771dbf</anchor>
      <arglist>(int_type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MAKE_SIGNED</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga1157d598db40a9013cb9a60b31672a9f</anchor>
      <arglist>(int_type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MAKE_UNSIGNED</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gabbaa9e2062ee5c6828dbd947c31cba2a</anchor>
      <arglist>(int_type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>INT_UNION_INITOR</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga103ebaa10ebec338489169fe9c81a338</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>INT_SPEC_INITOR</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga9af45e524977bc4aee069b8662b7a0b1</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct int_spec</type>
      <name>int_spec_t</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gac8351d206b8963ad06efd577c8cbf154</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>int_spec_t(</type>
      <name>integer_bin_op_t</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gae054eade5bbc2f25e4c87adc516ae5e6</anchor>
      <arglist>)(int_spec_t const *, int_spec_t const *)</arglist>
    </member>
    <member kind="enumeration">
      <name>int_type</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gad4e628ec3a9276027d7ada1e492f4a2a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_UNDEF</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aab730820b690f521a35250e7ade0051fd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_CHAR</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aa2e81335af10ab934b20046216ec8e9dd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_UCHAR</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aa085166e6ca341dbe80afe66ac946c789</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_SHORT</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aa3e9beddecec8e557aa6a8f000bba0496</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_USHORT</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aa47232731f8cc74aca6a802496a629e16</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_INT</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aa7cae5e672a1e36c8b6cd156b0191ca57</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_UINT</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aaa75b57fa077ee6b7230aa343f6b2daee</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_LONG</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aae5b6d0faa8ebc734c6cabd84420096e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_ULONG</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aa53740fc99974d6755fea0575a7a2c1a4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_LLONG</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aabff33ff576ea5ebf0491ec7e3cc9aa7e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_ULLONG</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aa54d6195df15ad69c781506298ac6fa6e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_TOO_BIG</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aacca208bc6ce67016b603d0461ae1e297</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_INSOLUBLE</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aa336015f546e66c0bd65c95c2833e9bf8</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>lt</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga8c7e12905e7213334a6646e5d4d37f4e</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>gt</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga837366aa8fb859764144a3f29a987655</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>le</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga83a8133cbd462fe97cdc6075be841500</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>ge</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga27dcfd7ad42b27e1d8cd11a255b71675</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>eq</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga2a0dfeb6f571b17d63be4517f5ae975c</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>ne</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga95e41a7a9d9f66ddd98ed1788f294667</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>bit_and</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga63146e4abed3add7482707a494bca738</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>bit_or</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga255f2644183abb57d1e8582d0fa5b304</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>bit_xor</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga4002187e3d53f19157167641868039df</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>complement</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga1b60a4adde057ca2ea2ae79e128787fd</anchor>
      <arglist>(int_spec_t const *int_spec)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>minus</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga1325e78e1015dece43f5faa352b43b01</anchor>
      <arglist>(int_spec_t const *int_spec)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>lshift</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gaef6dcc872591a671187edb4eb9a50e08</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>rshift</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gaf72359fe76767a4ae990d103102dad6e</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>add</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gab87f9928822bad57ee7342d8dcfcb95e</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>subtract</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gab4cb8bc9161e80d1f99e85a78b202ea2</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>multiply</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gac1743d3ea7f2297361de575bf2cf0f88</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>divide</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga7d1130c8629a0c8beb26c5649e643b66</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>modulus</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gaa7f8b4fff8b2457350065637a6d29863</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>boolean_and</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga0cebe0399b3efb90e869db8a50230393</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>boolean_or</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gaf440e77f7f3c36d3dd07b87b85a8d456</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>negate</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga6d7304db3c33f2b8b4dd9191e79d5249</anchor>
      <arglist>(int_spec_t const *int_spec)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>io.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00076</filename>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <includes id="a00061" name="filesys.h" local="yes" imported="no">filesys.h</includes>
    <includes id="a00077" name="io.h" local="yes" imported="no">io.h</includes>
    <includes id="a00037" name="args.h" local="yes" imported="no">args.h</includes>
    <includes id="a00090" name="platform.h" local="yes" imported="no">platform.h</includes>
    <includes id="a00048" name="dataset.h" local="yes" imported="no">dataset.h</includes>
    <includes id="a00044" name="configured_symbols.h" local="yes" imported="no">configured_symbols.h</includes>
    <class kind="struct">io_state_s</class>
    <member kind="typedef">
      <type>struct io_state_s</type>
      <name>io_state_t</name>
      <anchorfile>a00108.html</anchorfile>
      <anchor>gad3bd33a0ea983c690f3017ee48c95159</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>readon</name>
      <anchorfile>a00107.html</anchorfile>
      <anchor>ga822fe9f2772e2b5f4e9bef3dd710c41b</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>make_tempfile</name>
      <anchorfile>a00107.html</anchorfile>
      <anchor>gaf2c65ce3e6b36b3d2efa8e7e6d9ac62d</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>replace_infile</name>
      <anchorfile>a00107.html</anchorfile>
      <anchor>ga9ed5aaf863e38ceac7f36c7c8346c7da</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>make_backup_name</name>
      <anchorfile>a00107.html</anchorfile>
      <anchor>gabe957080d5da5b57183ba5e033c67a45</anchor>
      <arglist>(const char *filename)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>backup_infile</name>
      <anchorfile>a00107.html</anchorfile>
      <anchor>gad7f9d02c13d68e1518bc943156ff2477</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>delete_infile</name>
      <anchorfile>a00107.html</anchorfile>
      <anchor>gaad5bd8bb3745f4b15602c4821e95a226</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>open_output</name>
      <anchorfile>a00107.html</anchorfile>
      <anchor>gabebfaf537e5f5dd64f484e568f1dfbe0</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>io_initor</name>
      <anchorfile>a00108.html</anchorfile>
      <anchor>gab6b7e32bae878464158880297750bd13</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>io_finitor</name>
      <anchorfile>a00108.html</anchorfile>
      <anchor>gae16b0caae91eb5a88c22afa9b47f7c48</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>char *</type>
      <name>read_filename</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga3d1ea0280d75e95c19b76b7f46d8968e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>extend_line</name>
      <anchorfile>a00076.html</anchorfile>
      <anchor>a65dea12e34831fc77c3b7397f8ae0f38</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>FILE *</type>
      <name>open_file</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>gaa2bc615b784d3e3894a483d6b725a2db</anchor>
      <arglist>(const char *file, const char *mode)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>close_io</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>gab629f275389e9eb212c80c72ee1b4a82</anchor>
      <arglist>(int error)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>open_io</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>gaba3d54a5ddc14acfdf04de86868c0e8d</anchor>
      <arglist>(char const *filename)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>get_line</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga00f55e76163f2f233285e348b6843f58</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>char *</type>
      <name>read_more</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga9f083b356cc442de86eb1c5ec1ba14e6</anchor>
      <arglist>(char const *readpos)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>read_offset</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>gac225e24fb83a5635a1fd813866f9993b</anchor>
      <arglist>(char const *readpos)</arglist>
    </member>
    <member kind="function">
      <type>char *</type>
      <name>read_pos</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>gaa1a20a3fed93ba1769f3f3f79f54910e</anchor>
      <arglist>(size_t readoff)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ensure_buf</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga795c5d5606be91a4d013f143e2238578</anchor>
      <arglist>(size_t extra)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>input_opened</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga5fb0724ca136145f603b1375151a6348</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>save_read_pos</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga98804534072f723cdbfcde4d38ebbdee</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char *</type>
      <name>saved_read_pos</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga1b67773cd3796e8c89e829c4dd2c1782</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>io_toplevel</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga82cfeb7895245a5632033f5be90e2cd7</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static io_state_t</type>
      <name>io_state</name>
      <anchorfile>a00108.html</anchorfile>
      <anchor>ga691272422340ff06e199562c2632ef7f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>io_state_t *</type>
      <name>io_h</name>
      <anchorfile>a00108.html</anchorfile>
      <anchor>ga85b7629249b9f4ceac3bbf8a27601739</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>io_public_state_t *</type>
      <name>io_public_h</name>
      <anchorfile>a00108.html</anchorfile>
      <anchor>gac1bae437961baa00b9a1bdd358d70475</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const io_state_t *const</type>
      <name>io_static_initialiser_h</name>
      <anchorfile>a00108.html</anchorfile>
      <anchor>ga1187fcd90a8b79cfa79680ba6c122a17</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>io_init_h</name>
      <anchorfile>a00108.html</anchorfile>
      <anchor>ga6391d2bffa96d9b2f8024ced7c0e0d79</anchor>
      <arglist>)(io_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>io_finis_h</name>
      <anchorfile>a00108.html</anchorfile>
      <anchor>ga320ccff5108d290f6c08b4ca286671d8</anchor>
      <arglist>)(io_state_t *)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>io.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00077</filename>
    <member kind="define">
      <type>#define</type>
      <name>STDIN_NAME</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>gae0732e637abf58589bfbad8823fb422b</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>LINE_START</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>gad390357798e1d9d9c582cbe70e4180db</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>LINE_END</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga46c15c2a9d93258b270562894d66d5d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>LINE_OFF</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga991b41fd6db087506af45b317519a7a3</anchor>
      <arglist>(addr)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>INSOURCE</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga7b3ac4b772aa24e0f98441bd6ed7b132</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>char *</type>
      <name>read_filename</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga3d1ea0280d75e95c19b76b7f46d8968e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>FILE *</type>
      <name>open_file</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>gaa2bc615b784d3e3894a483d6b725a2db</anchor>
      <arglist>(const char *file, const char *mode)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>open_io</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>gaba3d54a5ddc14acfdf04de86868c0e8d</anchor>
      <arglist>(char const *filename)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>close_io</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>gab629f275389e9eb212c80c72ee1b4a82</anchor>
      <arglist>(int error)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>close_input</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga2ef1b6de95c188bbc15917b2e2681391</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>get_line</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga00f55e76163f2f233285e348b6843f58</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>char *</type>
      <name>read_more</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga9f083b356cc442de86eb1c5ec1ba14e6</anchor>
      <arglist>(char const *readpos)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>input_opened</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga5fb0724ca136145f603b1375151a6348</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ensure_buf</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga795c5d5606be91a4d013f143e2238578</anchor>
      <arglist>(size_t extra)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>save_read_pos</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga98804534072f723cdbfcde4d38ebbdee</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char *</type>
      <name>saved_read_pos</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga1b67773cd3796e8c89e829c4dd2c1782</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>io_toplevel</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga82cfeb7895245a5632033f5be90e2cd7</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>read_offset</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>gac225e24fb83a5635a1fd813866f9993b</anchor>
      <arglist>(char const *readpos)</arglist>
    </member>
    <member kind="function">
      <type>char *</type>
      <name>read_pos</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>gaa1a20a3fed93ba1769f3f3f79f54910e</anchor>
      <arglist>(size_t readoff)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PUBLIC_STATE_DEF</name>
      <anchorfile>a00106.html</anchorfile>
      <anchor>gad8295b9bae5ff39a871d5aaf6435a391</anchor>
      <arglist>(io)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PUBLIC_STATE_T</name>
      <anchorfile>a00077.html</anchorfile>
      <anchor>a84e2a69fc4c16a7e3a28ac5047d5c83d</anchor>
      <arglist>(io)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>IMPORT</name>
      <anchorfile>a00077.html</anchorfile>
      <anchor>ae88dba7f0eede3bc407d02e0a2e996f8</anchor>
      <arglist>(io)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>lexicon.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00078</filename>
    <includes id="a00079" name="lexicon.h" local="yes" imported="no">lexicon.h</includes>
    <includes id="a00042" name="chew.h" local="yes" imported="no">chew.h</includes>
    <includes id="a00101" name="symbol.h" local="yes" imported="no">symbol.h</includes>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>text_match</name>
      <anchorfile>a00222.html</anchorfile>
      <anchor>ga44eaee1d7e1071e1044cb75b34aee3df</anchor>
      <arglist>(char const **ptxt, char const *match, size_t nbytes)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>match_keyword</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga68ab478256581f5aad394e0142270624</anchor>
      <arglist>(char const **ptxt, char const *keyword)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>match_op</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga1007a7776e3f86524d4be50d7639a2be</anchor>
      <arglist>(char const **ptxt, char const *op)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>lexicon.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00079</filename>
    <includes id="a00038" name="bool.h" local="yes" imported="no">bool.h</includes>
    <member kind="define">
      <type>#define</type>
      <name>IF</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gac138c68a0709c57bc5f7567abc1558eb</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IFDEF</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga506761c33d63713eb3a3a5e5fa6cef6e</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IFNDEF</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gaebd32bb1a9648326697f1fff3e2e31c9</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>ELSE</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga0a70ee0cbf5b1738be4c9463c529ce72</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>ELIF</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gab19946ce7cd5cb117993ed5fcbcb79fb</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>ENDIF</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gaf7039fb6fb9cb00f8e223a05e1ee436b</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DEFINE</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gade00b3fdd54e15e954daf361878b065e</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>UNDEF</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gabde25a67f4046530ae1c572cefeb5869</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>INCLUDE</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga391839f157e857028cd094e755cc2233</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRAGMA</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gaac0ed3e151f909c1b30db30b14cd0551</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>ERROR</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga8fe83ac76edc595f6b98cd4a4127aed5</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DEFINED</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga1ba60eb36a5d04b11d6cc505858196ed</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>BOOLEAN_OR</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga1801fc4fafd0817c7db97daf109ecee8</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>BOOLEAN_AND</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga84c20d2efbc352490c302e2f4ac9bc90</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>BIT_OR</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga4a86c92e3da9750fd6e3517fa7565504</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>BIT_XOR</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga72ac2986a95d9ed99fb3a9e51876254c</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>BIT_AND</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gae5f62ce7db1befe3bcae9311fa5f6267</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>EQ</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gabaab8d42f075ee8ddc9b70951d3fd6cd</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>NEQ</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga2b6ba3ea1fe3e8cc970ad05cd05d703b</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>LE</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gaa4d6abc7b58eb11e517993df83b7f0f7</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>GE</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga38a01c8e60e89c1d671a68259085288f</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>LESS</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga16bcdd65ecdd3313af9e393538fa7fa8</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>GREATER</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gae27a03218878a9af9d7d946e186f8598</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>LSHIFT</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga0f77a13b2beaed43fa72e36ed62889d3</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>RSHIFT</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga1049a0169e895645cf0ca72784a1ee13</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>ADD</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga97fe5470fb1ac167c713671655ff3e52</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SUBTRACT</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga11810504a58eb589b148305b4049ffe0</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MULTIPLY</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga758cb9b9f3dfd247f86065edc057a552</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DIV</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga8295e0aed07a8923d8363ce46c7b08e2</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MOD</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gaca7d5718ab8c38506adb3bef2469b319</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>match_keyword</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga68ab478256581f5aad394e0142270624</anchor>
      <arglist>(char const **ptxt, char const *keyword)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>match_op</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga1007a7776e3f86524d4be50d7639a2be</anchor>
      <arglist>(char const **ptxt, char const *op)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>line_despatch.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00080</filename>
    <includes id="a00081" name="line_despatch.h" local="yes" imported="no">line_despatch.h</includes>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <includes id="a00037" name="args.h" local="yes" imported="no">args.h</includes>
    <includes id="a00083" name="line_edit.h" local="yes" imported="no">line_edit.h</includes>
    <includes id="a00077" name="io.h" local="yes" imported="no">io.h</includes>
    <class kind="struct">line_despatch_state_s</class>
    <member kind="define">
      <type>#define</type>
      <name>LINE_UNSIMPLIFIED</name>
      <anchorfile>a00158.html</anchorfile>
      <anchor>gaf7709d83450d4897a64ecce862fb4b69</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct line_despatch_state_s</type>
      <name>line_despatch_state_t</name>
      <anchorfile>a00159.html</anchorfile>
      <anchor>ga2d452caac161a3db224840f842800d97</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>printline_fast</name>
      <anchorfile>a00158.html</anchorfile>
      <anchor>gaa281f0784ec28979f293deef4f4aafaf</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>printline_cut</name>
      <anchorfile>a00158.html</anchorfile>
      <anchor>gaced7c6d1425774f52aceda85da01429d</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>printline_restore_all_paren</name>
      <anchorfile>a00158.html</anchorfile>
      <anchor>gade4a5af77e0ae67b3a859441de1d7b98</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>printline_slow</name>
      <anchorfile>a00158.html</anchorfile>
      <anchor>ga0e00fdb0e9c9b749ddf671a37a9b30ab</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>printline</name>
      <anchorfile>a00158.html</anchorfile>
      <anchor>ga97ae4f764d880b0d26f3a40e0e793aee</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>printline_commented_out</name>
      <anchorfile>a00158.html</anchorfile>
      <anchor>ga273de649aaec3a16c8696a8750a9e778</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>flushline_dummy</name>
      <anchorfile>a00158.html</anchorfile>
      <anchor>gacec469228d899dccdb7b35d9a01956aa</anchor>
      <arglist>(bool keep, const char *insert_text)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>flushline_live</name>
      <anchorfile>a00158.html</anchorfile>
      <anchor>ga217a21961b5bf8a4774197d65c140d63</anchor>
      <arglist>(bool keep, char const *insert_text)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>line_despatch_initor</name>
      <anchorfile>a00159.html</anchorfile>
      <anchor>ga94f451a897a50bb996f3abaf38b5f451</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>line_despatch_finitor</name>
      <anchorfile>a00159.html</anchorfile>
      <anchor>gaa1909dd6ccf37a4624963f60b8a35a3f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>line_despatch_no_op</name>
      <anchorfile>a00156.html</anchorfile>
      <anchor>ga080a81af566e09aadf15f2416d796d3a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>print</name>
      <anchorfile>a00156.html</anchorfile>
      <anchor>ga7e8442e7139d840c15bdee83789f7ae8</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>drop</name>
      <anchorfile>a00156.html</anchorfile>
      <anchor>ga70b6ce664b7b4fdb33e25ad9d81873d6</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>substitute</name>
      <anchorfile>a00156.html</anchorfile>
      <anchor>gab5ec785ee5348893fe8af7ef8a17a997</anchor>
      <arglist>(const char *replacement)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static line_despatch_state_t</type>
      <name>line_despatch_state</name>
      <anchorfile>a00159.html</anchorfile>
      <anchor>ga26d64d3e68ced64771b26af1849b69f3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>line_despatch_state_t *</type>
      <name>line_despatch_h</name>
      <anchorfile>a00159.html</anchorfile>
      <anchor>ga93c88fe5eaf4f04d4ce1046b83880d1c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>line_despatch_public_state_t *</type>
      <name>line_despatch_public_h</name>
      <anchorfile>a00159.html</anchorfile>
      <anchor>ga15185925f5552f3ed528d9ba4977a065</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const line_despatch_state_t *const</type>
      <name>line_despatch_static_initialiser_h</name>
      <anchorfile>a00159.html</anchorfile>
      <anchor>ga8d3e3941d85b89636aa7933474fed182</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>line_despatch_init_h</name>
      <anchorfile>a00159.html</anchorfile>
      <anchor>ga74ff6ce4958d1549f51137cd6f8b3ae8</anchor>
      <arglist>)(line_despatch_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>line_despatch_finis_h</name>
      <anchorfile>a00159.html</anchorfile>
      <anchor>ga1b94b530bff8f971ab2bc039085a1f72</anchor>
      <arglist>)(line_despatch_state_t *)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const line_despatch_state_t</type>
      <name>line_despatch_static_initialiser</name>
      <anchorfile>a00159.html</anchorfile>
      <anchor>gaf174ebf73ee2299ae46f6af93e7c5404</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>line_despatch.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00081</filename>
    <includes id="a00098" name="state_utils.h" local="yes" imported="no">state_utils.h</includes>
    <class kind="struct">line_despatch_public_state_s</class>
    <member kind="typedef">
      <type>struct line_despatch_public_state_s</type>
      <name>line_despatch_public_state_t</name>
      <anchorfile>a00157.html</anchorfile>
      <anchor>gad1c8a4fdbb1b1e3d0d71550039aefd01</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>print</name>
      <anchorfile>a00156.html</anchorfile>
      <anchor>ga7e8442e7139d840c15bdee83789f7ae8</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>drop</name>
      <anchorfile>a00156.html</anchorfile>
      <anchor>ga70b6ce664b7b4fdb33e25ad9d81873d6</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>substitute</name>
      <anchorfile>a00156.html</anchorfile>
      <anchor>gab5ec785ee5348893fe8af7ef8a17a997</anchor>
      <arglist>(const char *replacement)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>line_despatch_no_op</name>
      <anchorfile>a00156.html</anchorfile>
      <anchor>ga080a81af566e09aadf15f2416d796d3a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>line_despatch_initor</name>
      <anchorfile>a00157.html</anchorfile>
      <anchor>ga94f451a897a50bb996f3abaf38b5f451</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>line_despatch_finitor</name>
      <anchorfile>a00157.html</anchorfile>
      <anchor>gaa1909dd6ccf37a4624963f60b8a35a3f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>line_despatch_public_state_t *</type>
      <name>line_despatch_public_h</name>
      <anchorfile>a00157.html</anchorfile>
      <anchor>ga15185925f5552f3ed528d9ba4977a065</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>line_edit.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00082</filename>
    <includes id="a00083" name="line_edit.h" local="yes" imported="no">line_edit.h</includes>
    <includes id="a00077" name="io.h" local="yes" imported="no">io.h</includes>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <includes id="a00081" name="line_despatch.h" local="yes" imported="no">line_despatch.h</includes>
    <member kind="define">
      <type>#define</type>
      <name>DELETE_CHARS</name>
      <anchorfile>a00153.html</anchorfile>
      <anchor>ga36d6bf6e77f9dab19d17cad43745d380</anchor>
      <arglist>(start, end)</arglist>
    </member>
    <member kind="typedef">
      <type>line_edit_public_state_t</type>
      <name>line_edit_state_t</name>
      <anchorfile>a00154.html</anchorfile>
      <anchor>ga5071c832a7cdf255b78b70580e7829d6</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>tail_edit</name>
      <anchorfile>a00153.html</anchorfile>
      <anchor>ga34928f096a118e4de1c676085b1d1ee9</anchor>
      <arglist>(char *where, const char *what)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>keywordedit</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>ga52ddd528b397a8f1c552ff099f0328f2</anchor>
      <arglist>(const char *replacement)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>delete_paren</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>ga8f597fa594b3ae8b9e8faea62ef63fbc</anchor>
      <arglist>(size_t lparen_off, size_t rparen_off)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>restore_paren</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>ga49d8081fc01971e2635855506913b46a</anchor>
      <arglist>(size_t lparen_off, size_t rparen_off)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>restore_all_paren</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>ga25874fd18f229e95592f313739b9a79b</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>cut_text</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>ga79d8de30b079869b280f128aa674b24e</anchor>
      <arglist>(char const *start, char const *end)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>truncate_line</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>gabcdf96091ffcd5a1bf3bc629c969a520</anchor>
      <arglist>(size_t off)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>line_edit_initor</name>
      <anchorfile>a00154.html</anchorfile>
      <anchor>gae237cacc9ffbd8445d25fab4e8333953</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>line_edit_finitor</name>
      <anchorfile>a00154.html</anchorfile>
      <anchor>ga93169163ca2a0eacab048cc2282a44e2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static line_edit_state_t</type>
      <name>line_edit_state</name>
      <anchorfile>a00154.html</anchorfile>
      <anchor>gad5f2054fca5bb81a2dc9ec66d34d8d0f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>line_edit_state_t *</type>
      <name>line_edit_h</name>
      <anchorfile>a00154.html</anchorfile>
      <anchor>ga147cce8e5b06a5e496d22993ddddd585</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>line_edit_public_state_t *</type>
      <name>line_edit_public_h</name>
      <anchorfile>a00154.html</anchorfile>
      <anchor>ga3b02f4a7bd6991ff15c735e2e6bf86d1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const line_edit_state_t *const</type>
      <name>line_edit_static_initialiser_h</name>
      <anchorfile>a00154.html</anchorfile>
      <anchor>ga7c27b75b0f7c2ed7ed827471967c7c83</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>line_edit_init_h</name>
      <anchorfile>a00154.html</anchorfile>
      <anchor>ga30c5cb2c52e2d4d2e1e24098c4d0ba98</anchor>
      <arglist>)(line_edit_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>line_edit_finis_h</name>
      <anchorfile>a00154.html</anchorfile>
      <anchor>gafaca0b34d1e8c532e4f0f8a21cf22bf9</anchor>
      <arglist>)(line_edit_state_t *)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>line_edit.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00083</filename>
    <includes id="a00098" name="state_utils.h" local="yes" imported="no">state_utils.h</includes>
    <class kind="struct">line_edit_public_state_s</class>
    <member kind="define">
      <type>#define</type>
      <name>DELETEABLE_CHR</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>ga60406183f5b14daaab6c5a716f26147b</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DELETEABLE_LPAREN</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>ga0fc778ecc1b1807922db9a27748534f9</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DELETEABLE_RPAREN</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>gaee2809adeba27f1241e0f1dad4d0e8a3</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DELETEABLE</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>ga1466c031cea6c1e497b71ba9687615bd</anchor>
      <arglist>(ch)</arglist>
    </member>
    <member kind="typedef">
      <type>struct line_edit_public_state_s</type>
      <name>line_edit_public_state_t</name>
      <anchorfile>a00152.html</anchorfile>
      <anchor>ga4460ab1d11d3c4c51933816ce5cb73fe</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>keywordedit</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>ga52ddd528b397a8f1c552ff099f0328f2</anchor>
      <arglist>(const char *replacement)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>delete_paren</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>ga8f597fa594b3ae8b9e8faea62ef63fbc</anchor>
      <arglist>(size_t lparen_off, size_t rparen_off)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>restore_paren</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>ga49d8081fc01971e2635855506913b46a</anchor>
      <arglist>(size_t lparen_off, size_t rparen_off)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>restore_all_paren</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>ga25874fd18f229e95592f313739b9a79b</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>cut_text</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>ga79d8de30b079869b280f128aa674b24e</anchor>
      <arglist>(char const *start, char const *end)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>truncate_line</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>gabcdf96091ffcd5a1bf3bc629c969a520</anchor>
      <arglist>(size_t off)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>line_edit_initor</name>
      <anchorfile>a00152.html</anchorfile>
      <anchor>gae237cacc9ffbd8445d25fab4e8333953</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>line_edit_finitor</name>
      <anchorfile>a00152.html</anchorfile>
      <anchor>ga93169163ca2a0eacab048cc2282a44e2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>line_edit_public_state_t *</type>
      <name>line_edit_public_h</name>
      <anchorfile>a00152.html</anchorfile>
      <anchor>ga3b02f4a7bd6991ff15c735e2e6bf86d1</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>line_select.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00084</filename>
    <includes id="a00085" name="line_select.h" local="yes" imported="no">line_select.h</includes>
    <includes id="a00037" name="args.h" local="yes" imported="no">args.h</includes>
    <includes id="a00069" name="if_control.h" local="yes" imported="no">if_control.h</includes>
    <includes id="a00050" name="directives_tally.h" local="yes" imported="no">directives_tally.h</includes>
    <includes id="a00077" name="io.h" local="yes" imported="no">io.h</includes>
    <member kind="function">
      <type>bool</type>
      <name>dropping_line</name>
      <anchorfile>a00207.html</anchorfile>
      <anchor>ga7c8c317b0bc7b28e00f3066bddbebc69</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>eligible_line</name>
      <anchorfile>a00207.html</anchorfile>
      <anchor>ga313bb1a10f48ecb6e1990039b528ac35</anchor>
      <arglist>(int cmd_code, int directive)</arglist>
    </member>
    <member kind="enumeration">
      <name>line_select_storage_type</name>
      <anchorfile>a00084.html</anchorfile>
      <anchor>a2b3c7560465fd695ff3ec64da36cf846</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>line_select_init_type</name>
      <anchorfile>a00084.html</anchorfile>
      <anchor>a30eb93e4f7d94916511c813e82652241</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>line_select_public_state_t</type>
      <name>line_select_state_t</name>
      <anchorfile>a00210.html</anchorfile>
      <anchor>ga9c0daff8867bfd556f2262c7073cdab8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static line_select_state_t</type>
      <name>line_select_state</name>
      <anchorfile>a00084.html</anchorfile>
      <anchor>ae8f1107bb31b09efcd1818f667dc9409</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>line_select_state_t *</type>
      <name>line_select_h</name>
      <anchorfile>a00084.html</anchorfile>
      <anchor>aeeac1b50327188a151ff22e00a6bcbed</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>line_select_public_state_t *</type>
      <name>line_select_public_h</name>
      <anchorfile>a00084.html</anchorfile>
      <anchor>a16f97f56230c3d4d0bf0f2f619c79317</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const line_select_state_t *const</type>
      <name>line_select_static_initialiser_h</name>
      <anchorfile>a00084.html</anchorfile>
      <anchor>a9d08c90d2d2ee6994c3c8fc9a65df827</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>line_select_init_h</name>
      <anchorfile>a00084.html</anchorfile>
      <anchor>a48f3238b9008eaf691dcb2ce6461526d</anchor>
      <arglist>)(line_select_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>line_select_finis_h</name>
      <anchorfile>a00084.html</anchorfile>
      <anchor>a11e312a43ac4aaaa18f360a7f9dc1bbd</anchor>
      <arglist>)(line_select_state_t *)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>line_select_initor</name>
      <anchorfile>a00084.html</anchorfile>
      <anchor>a66e2ce42f5077cb96d2e11bc031a1ce3</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>line_select_finitor</name>
      <anchorfile>a00084.html</anchorfile>
      <anchor>a6c5140662a2e0d256fe6c08f88d3de59</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>line_select.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00085</filename>
    <includes id="a00098" name="state_utils.h" local="yes" imported="no">state_utils.h</includes>
    <class kind="struct">line_select_public_state_s</class>
    <member kind="function">
      <type>bool</type>
      <name>eligible_line</name>
      <anchorfile>a00207.html</anchorfile>
      <anchor>ga313bb1a10f48ecb6e1990039b528ac35</anchor>
      <arglist>(int cmd_code, int directive)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>dropping_line</name>
      <anchorfile>a00207.html</anchorfile>
      <anchor>ga7c8c317b0bc7b28e00f3066bddbebc69</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="typedef">
      <type>struct line_select_public_state_s</type>
      <name>line_select_public_state_t</name>
      <anchorfile>a00208.html</anchorfile>
      <anchor>gac3bb3f93c8244372254e9e996d46dd14</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>line_select_public_state_t *</type>
      <name>line_select_public_h</name>
      <anchorfile>a00208.html</anchorfile>
      <anchor>ga16f97f56230c3d4d0bf0f2f619c79317</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>line_select_initor</name>
      <anchorfile>a00208.html</anchorfile>
      <anchor>ga66e2ce42f5077cb96d2e11bc031a1ce3</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>line_select_finitor</name>
      <anchorfile>a00208.html</anchorfile>
      <anchor>ga6c5140662a2e0d256fe6c08f88d3de59</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>main.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00086</filename>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <includes id="a00046" name="contradiction.h" local="yes" imported="no">contradiction.h</includes>
    <includes id="a00081" name="line_despatch.h" local="yes" imported="no">line_despatch.h</includes>
    <includes id="a00069" name="if_control.h" local="yes" imported="no">if_control.h</includes>
    <includes id="a00037" name="args.h" local="yes" imported="no">args.h</includes>
    <includes id="a00077" name="io.h" local="yes" imported="no">io.h</includes>
    <includes id="a00042" name="chew.h" local="yes" imported="no">chew.h</includes>
    <includes id="a00083" name="line_edit.h" local="yes" imported="no">line_edit.h</includes>
    <includes id="a00057" name="exception.h" local="yes" imported="no">exception.h</includes>
    <includes id="a00048" name="dataset.h" local="yes" imported="no">dataset.h</includes>
    <includes id="a00044" name="configured_symbols.h" local="yes" imported="no">configured_symbols.h</includes>
    <includes id="a00103" name="unconfigured_symbols.h" local="yes" imported="no">unconfigured_symbols.h</includes>
    <includes id="a00071" name="includes_tally.h" local="yes" imported="no">includes_tally.h</includes>
    <includes id="a00085" name="line_select.h" local="yes" imported="no">line_select.h</includes>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>ready</name>
      <anchorfile>a00175.html</anchorfile>
      <anchor>gaea2ad4fea716c645e2c4c6b2ae55e1e9</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>process</name>
      <anchorfile>a00175.html</anchorfile>
      <anchor>ga6ef0387bd645347b1a61efc620315993</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>main</name>
      <anchorfile>a00175.html</anchorfile>
      <anchor>ga0ddf1224851353fc92bfbff6f499fa97</anchor>
      <arglist>(int argc, char *argv[])</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>line_debug</name>
      <anchorfile>a00175.html</anchorfile>
      <anchor>gaafaa288babfda32e4ef6d1c5662be75e</anchor>
      <arglist>(int line)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>node_proc</name>
      <anchorfile>a00175.html</anchorfile>
      <anchor>ga71954031340e22cbc89a19be1c48f3b8</anchor>
      <arglist>(file_tree_h ft, char const *name, file_tree_traverse_state_t context)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>memory.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00087</filename>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <includes id="a00088" name="memory.h" local="yes" imported="no">memory.h</includes>
    <member kind="function" static="yes">
      <type>static void *</type>
      <name>no_alloc_fail</name>
      <anchorfile>a00129.html</anchorfile>
      <anchor>ga093fa743e5341feb856b984c8ae31067</anchor>
      <arglist>(void *ptr)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>allocate</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>ga521ac5a73fab458976fb4ecdcc2e1f28</anchor>
      <arglist>(size_t bytes)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>zallocate</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>ga96c81fa8b4628ce66c19a047c6f20ec2</anchor>
      <arglist>(size_t bytes)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>reallocate</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>ga7ddb7762200fe4803657fb8001731996</anchor>
      <arglist>(void *ptr, size_t bytes)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>callocate</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>gaa9a9b650a19b1b8a2028756cc8676c8c</anchor>
      <arglist>(size_t items, size_t size)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>release</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>gaec665bdee3bb238a658f500576597c06</anchor>
      <arglist>(void **pp)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>clone</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>ga7974661e860b452b6be72713be317a6d</anchor>
      <arglist>(void const *src, size_t len)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>memory.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00088</filename>
    <member kind="typedef">
      <type>char *</type>
      <name>heap_str</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>gafce3a31f09c5736e6ba643bce5cbe9b5</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>char const *</type>
      <name>heap_str_const</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>ga4de9c668c07c500bf5c48af500e8cf97</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>allocate</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>ga521ac5a73fab458976fb4ecdcc2e1f28</anchor>
      <arglist>(size_t bytes)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>zallocate</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>ga96c81fa8b4628ce66c19a047c6f20ec2</anchor>
      <arglist>(size_t bytes)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>reallocate</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>ga7ddb7762200fe4803657fb8001731996</anchor>
      <arglist>(void *ptr, size_t bytes)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>callocate</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>gaa9a9b650a19b1b8a2028756cc8676c8c</anchor>
      <arglist>(size_t items, size_t size)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>release</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>gaec665bdee3bb238a658f500576597c06</anchor>
      <arglist>(void **pp)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>clone</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>ga7974661e860b452b6be72713be317a6d</anchor>
      <arglist>(void const *src, size_t len)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>opts.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00089</filename>
    <member kind="define">
      <type>#define</type>
      <name>DEFAULT_STATIC_STATE</name>
      <anchorfile>a00089.html</anchorfile>
      <anchor>add1b120428478ba312172895e2115f4a</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>platform.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00090</filename>
    <includes id="a00089" name="opts.h" local="yes" imported="no">opts.h</includes>
    <member kind="define">
      <type>#define</type>
      <name>PATH_DELIM</name>
      <anchorfile>a00090.html</anchorfile>
      <anchor>a79a1771c654f4dd46398088f3e33701a</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>FS_ROOT_PREFIX</name>
      <anchorfile>a00090.html</anchorfile>
      <anchor>a644385266707222b72ebff0e187d75a3</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>OS_TYPE</name>
      <anchorfile>a00090.html</anchorfile>
      <anchor>ac49cbbb3d31529b75c2490af64e52695</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>NIX</name>
      <anchorfile>a00090.html</anchorfile>
      <anchor>af4449ca1c68db96ee4a852d7d03d8ffa</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>STRICMP</name>
      <anchorfile>a00090.html</anchorfile>
      <anchor>a3d0afca01d5835b8319e970dc5ba9f50</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>STRNICMP</name>
      <anchorfile>a00090.html</anchorfile>
      <anchor>aedda2fea033b013ec6f88e5fee1ed048</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>_XOPEN_SOURCE</name>
      <anchorfile>a00090.html</anchorfile>
      <anchor>a78c99ffd76a7bb3c8c74db76207e9ab4</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>ptr_set.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00091</filename>
    <includes id="a00092" name="ptr_set.h" local="yes" imported="no">ptr_set.h</includes>
    <includes id="a00088" name="memory.h" local="yes" imported="no">memory.h</includes>
    <includes id="a00099" name="swiss_army.h" local="yes" imported="no">swiss_army.h</includes>
    <class kind="struct">ptr_set</class>
    <member kind="define">
      <type>#define</type>
      <name>SOMEWHERE</name>
      <anchorfile>a00120.html</anchorfile>
      <anchor>gafffc4f9cbf9da88e900aa3cb6d38419a</anchor>
      <arglist>(loc)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>NOWHERE</name>
      <anchorfile>a00120.html</anchorfile>
      <anchor>ga710eecf1be57ca7bf458dc737d8809c9</anchor>
      <arglist>(loc)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>POINTER</name>
      <anchorfile>a00120.html</anchorfile>
      <anchor>ga9006b5e36b864140515dbe0442c64b7d</anchor>
      <arglist>(loc)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>default_comparator</name>
      <anchorfile>a00120.html</anchorfile>
      <anchor>gaf177e55835f1af7165eb1f5365c8c5bf</anchor>
      <arglist>(void const *obj, void const *key, locator_t ignore)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>ptr_set_init</name>
      <anchorfile>a00120.html</anchorfile>
      <anchor>ga4e66f79ec45ccdee9d8f8c4eb4163478</anchor>
      <arglist>(ptr_set_h ps, comparator_t compare, dtor_t dtor, cloner_t cloner)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>ptr_set_copy_init</name>
      <anchorfile>a00120.html</anchorfile>
      <anchor>ga8cec083c468b85ed25493f00c883aa2d</anchor>
      <arglist>(ptr_set_h dest, ptr_set_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>ptr_set_h</type>
      <name>ptr_set_new</name>
      <anchorfile>a00091.html</anchorfile>
      <anchor>ab1401892cfa75469ba8c01c6c867b958</anchor>
      <arglist>(comparator_t compare, dtor_t dtor, cloner_t cloner)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_set_dispose</name>
      <anchorfile>a00091.html</anchorfile>
      <anchor>ab645b066bde84493d0e95352e00a6f6b</anchor>
      <arglist>(ptr_set_h ps)</arglist>
    </member>
    <member kind="function">
      <type>ptr_set_h</type>
      <name>ptr_set_copy</name>
      <anchorfile>a00091.html</anchorfile>
      <anchor>a811801ac235c0db95007e14b7056c2de</anchor>
      <arglist>(ptr_set_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_set_swap</name>
      <anchorfile>a00091.html</anchorfile>
      <anchor>a08a7f7b51652a4c864ee20d822087743</anchor>
      <arglist>(ptr_set_h lhs, ptr_set_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_set_assign</name>
      <anchorfile>a00091.html</anchorfile>
      <anchor>a6dc1bcb6d650dc269153891cee34585b</anchor>
      <arglist>(ptr_set_h dest, ptr_set_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>ptr_set_equal</name>
      <anchorfile>a00091.html</anchorfile>
      <anchor>a11b9e8ebe48ad72be9bf68feafcac04d</anchor>
      <arglist>(ptr_set_const_h lhs, ptr_set_const_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>comparator_t</type>
      <name>ptr_set_comparator</name>
      <anchorfile>a00091.html</anchorfile>
      <anchor>ad5cfd8a9d2d04edaf3b06783ce4fa781</anchor>
      <arglist>(ptr_set_const_h ps)</arglist>
    </member>
    <member kind="function">
      <type>dtor_t</type>
      <name>ptr_set_dtor</name>
      <anchorfile>a00091.html</anchorfile>
      <anchor>aa87ad7d7ddc77ae2e6b5bb9af341477d</anchor>
      <arglist>(ptr_set_const_h ps)</arglist>
    </member>
    <member kind="function">
      <type>cloner_t</type>
      <name>ptr_set_cloner</name>
      <anchorfile>a00091.html</anchorfile>
      <anchor>a2816601c6c8bd890146ef325e52bfb90</anchor>
      <arglist>(ptr_set_const_h ps)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>ptr_set_count</name>
      <anchorfile>a00091.html</anchorfile>
      <anchor>a7a4a8735286b56f7dcd0943a834b3dfc</anchor>
      <arglist>(ptr_set_const_h ps)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>ptr_set_search</name>
      <anchorfile>a00091.html</anchorfile>
      <anchor>a76441423bf532acdb29ac24b5f3457ba</anchor>
      <arglist>(ptr_set_h ps, char const *key, locator_t keylen)</arglist>
    </member>
    <member kind="function">
      <type>void const *</type>
      <name>ptr_set_search_const</name>
      <anchorfile>a00091.html</anchorfile>
      <anchor>a778d90467e26fb2943b6cd8c2614a25d</anchor>
      <arglist>(ptr_set_const_h ps, char const *key, locator_t keylen)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>ptr_set_insert</name>
      <anchorfile>a00091.html</anchorfile>
      <anchor>a031fdbbaf368a08b0ae0d51b59b51af7</anchor>
      <arglist>(ptr_set_h ps, void const *obj)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>ptr_set_delete</name>
      <anchorfile>a00091.html</anchorfile>
      <anchor>a4fb80287e54ca6a6c6be9b0a99c695ef</anchor>
      <arglist>(ptr_set_h ps, locator_t pos)</arglist>
    </member>
    <member kind="function">
      <type>void **</type>
      <name>ptr_set_begin</name>
      <anchorfile>a00091.html</anchorfile>
      <anchor>af0aad5a914227b00eb01de5c956bddd1</anchor>
      <arglist>(ptr_set_const_h ps)</arglist>
    </member>
    <member kind="function">
      <type>void **</type>
      <name>ptr_set_end</name>
      <anchorfile>a00091.html</anchorfile>
      <anchor>a1b875475f2d15051d4b884aa9d166c5f</anchor>
      <arglist>(ptr_set_const_h ps)</arglist>
    </member>
    <member kind="function">
      <type>void const **</type>
      <name>ptr_set_begin_const</name>
      <anchorfile>a00091.html</anchorfile>
      <anchor>a5f486323ef13ea51dd3419b3774f0ad3</anchor>
      <arglist>(ptr_set_const_h ps)</arglist>
    </member>
    <member kind="function">
      <type>void const **</type>
      <name>ptr_set_end_const</name>
      <anchorfile>a00091.html</anchorfile>
      <anchor>a2eca3abd515ee4d8b5bdee6d8098fd45</anchor>
      <arglist>(ptr_set_const_h ps)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>ptr_set.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00092</filename>
    <includes id="a00089" name="opts.h" local="yes" imported="no">opts.h</includes>
    <includes id="a00094" name="ptr_vector.h" local="yes" imported="no">ptr_vector.h</includes>
    <member kind="typedef">
      <type>struct ptr_set *</type>
      <name>ptr_set_h</name>
      <anchorfile>a00092.html</anchorfile>
      <anchor>aeaee3cf678f04b7d8e957e37317b18cf</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct ptr_set const *</type>
      <name>ptr_set_const_h</name>
      <anchorfile>a00092.html</anchorfile>
      <anchor>abefe9e652d150b391060fa26212fe326</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>ptr_set_h</type>
      <name>ptr_set_new</name>
      <anchorfile>a00092.html</anchorfile>
      <anchor>ab1401892cfa75469ba8c01c6c867b958</anchor>
      <arglist>(comparator_t compare, dtor_t dtor, cloner_t cloner)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_set_dispose</name>
      <anchorfile>a00092.html</anchorfile>
      <anchor>ab645b066bde84493d0e95352e00a6f6b</anchor>
      <arglist>(ptr_set_h ps)</arglist>
    </member>
    <member kind="function">
      <type>ptr_set_h</type>
      <name>ptr_set_copy</name>
      <anchorfile>a00092.html</anchorfile>
      <anchor>a811801ac235c0db95007e14b7056c2de</anchor>
      <arglist>(ptr_set_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_set_swap</name>
      <anchorfile>a00092.html</anchorfile>
      <anchor>a08a7f7b51652a4c864ee20d822087743</anchor>
      <arglist>(ptr_set_h lhs, ptr_set_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_set_assign</name>
      <anchorfile>a00092.html</anchorfile>
      <anchor>a6dc1bcb6d650dc269153891cee34585b</anchor>
      <arglist>(ptr_set_h dest, ptr_set_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>ptr_set_equal</name>
      <anchorfile>a00092.html</anchorfile>
      <anchor>a11b9e8ebe48ad72be9bf68feafcac04d</anchor>
      <arglist>(ptr_set_const_h lhs, ptr_set_const_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>comparator_t</type>
      <name>ptr_set_comparator</name>
      <anchorfile>a00092.html</anchorfile>
      <anchor>ad5cfd8a9d2d04edaf3b06783ce4fa781</anchor>
      <arglist>(ptr_set_const_h ps)</arglist>
    </member>
    <member kind="function">
      <type>dtor_t</type>
      <name>ptr_set_dtor</name>
      <anchorfile>a00092.html</anchorfile>
      <anchor>aa87ad7d7ddc77ae2e6b5bb9af341477d</anchor>
      <arglist>(ptr_set_const_h ps)</arglist>
    </member>
    <member kind="function">
      <type>cloner_t</type>
      <name>ptr_set_cloner</name>
      <anchorfile>a00092.html</anchorfile>
      <anchor>a2816601c6c8bd890146ef325e52bfb90</anchor>
      <arglist>(ptr_set_const_h ps)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>ptr_set_count</name>
      <anchorfile>a00092.html</anchorfile>
      <anchor>a7a4a8735286b56f7dcd0943a834b3dfc</anchor>
      <arglist>(ptr_set_const_h ps)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>ptr_set_search</name>
      <anchorfile>a00092.html</anchorfile>
      <anchor>a76441423bf532acdb29ac24b5f3457ba</anchor>
      <arglist>(ptr_set_h ps, char const *key, locator_t keylen)</arglist>
    </member>
    <member kind="function">
      <type>void const *</type>
      <name>ptr_set_search_const</name>
      <anchorfile>a00092.html</anchorfile>
      <anchor>a778d90467e26fb2943b6cd8c2614a25d</anchor>
      <arglist>(ptr_set_const_h ps, char const *key, locator_t keylen)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>ptr_set_insert</name>
      <anchorfile>a00092.html</anchorfile>
      <anchor>a031fdbbaf368a08b0ae0d51b59b51af7</anchor>
      <arglist>(ptr_set_h ps, void const *obj)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>ptr_set_delete</name>
      <anchorfile>a00092.html</anchorfile>
      <anchor>a4fb80287e54ca6a6c6be9b0a99c695ef</anchor>
      <arglist>(ptr_set_h ps, locator_t pos)</arglist>
    </member>
    <member kind="function">
      <type>void **</type>
      <name>ptr_set_begin</name>
      <anchorfile>a00092.html</anchorfile>
      <anchor>af0aad5a914227b00eb01de5c956bddd1</anchor>
      <arglist>(ptr_set_const_h ps)</arglist>
    </member>
    <member kind="function">
      <type>void **</type>
      <name>ptr_set_end</name>
      <anchorfile>a00092.html</anchorfile>
      <anchor>a1b875475f2d15051d4b884aa9d166c5f</anchor>
      <arglist>(ptr_set_const_h ps)</arglist>
    </member>
    <member kind="function">
      <type>void const **</type>
      <name>ptr_set_begin_const</name>
      <anchorfile>a00092.html</anchorfile>
      <anchor>a5f486323ef13ea51dd3419b3774f0ad3</anchor>
      <arglist>(ptr_set_const_h ps)</arglist>
    </member>
    <member kind="function">
      <type>void const **</type>
      <name>ptr_set_end_const</name>
      <anchorfile>a00092.html</anchorfile>
      <anchor>a2eca3abd515ee4d8b5bdee6d8098fd45</anchor>
      <arglist>(ptr_set_const_h ps)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>ptr_vector.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00093</filename>
    <includes id="a00094" name="ptr_vector.h" local="yes" imported="no">ptr_vector.h</includes>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <includes id="a00099" name="swiss_army.h" local="yes" imported="no">swiss_army.h</includes>
    <class kind="struct">ptr_vector</class>
    <member kind="function" static="yes">
      <type>static void *</type>
      <name>default_cloner</name>
      <anchorfile>a00117.html</anchorfile>
      <anchor>ga1432a1fb2bc845b99c837c18f0b6fd38</anchor>
      <arglist>(void const *src)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>ptr_vector_init</name>
      <anchorfile>a00117.html</anchorfile>
      <anchor>ga1bf962b44fad63f6e654a11b94b5d953</anchor>
      <arglist>(ptr_vector_h pv, dtor_t dtor, cloner_t cloner)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>ptr_vector_copy_init</name>
      <anchorfile>a00117.html</anchorfile>
      <anchor>gaefdaaf5f5331bc60144200e17a4b08a8</anchor>
      <arglist>(ptr_vector_h dest, ptr_vector_const_h src)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>ptr_vector_finis</name>
      <anchorfile>a00117.html</anchorfile>
      <anchor>ga35be27f36d91678858bf6d38aec3814b</anchor>
      <arglist>(ptr_vector_h pv)</arglist>
    </member>
    <member kind="function">
      <type>ptr_vector_h</type>
      <name>ptr_vector_new</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gaddcab44a9bd8249fa3d6776848036a3e</anchor>
      <arglist>(dtor_t dtor, cloner_t cloner)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_vector_dispose</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gabf7634df2d816998ff8b776ceecb3164</anchor>
      <arglist>(ptr_vector_h pv)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_vector_drop</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga6260f534b7c4b245370e9621a5dea0a7</anchor>
      <arglist>(ptr_vector_h pv)</arglist>
    </member>
    <member kind="function">
      <type>ptr_vector_h</type>
      <name>ptr_vector_copy</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga5555ff02fccf8a9e7165107492f0133d</anchor>
      <arglist>(ptr_vector_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_vector_swap</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gad7e1b9b79a1262fd4071e98cba3ae7af</anchor>
      <arglist>(ptr_vector_h lhs, ptr_vector_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_vector_assign</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gaf4516c66eb73d976a13bc3970f9b86cf</anchor>
      <arglist>(ptr_vector_h dest, ptr_vector_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_vector_insert</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gae33c020334885d0d445bc69e0125c2dd</anchor>
      <arglist>(ptr_vector_h pv, size_t pos, void const *ptr)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>ptr_vector_delete</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga6f256ea4604188749be6dbb60c100ac2</anchor>
      <arglist>(ptr_vector_h pv, size_t pos)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>ptr_vector_equal</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga29e6c6c8d263ecd087d65096dd01e229</anchor>
      <arglist>(ptr_vector_const_h lhs, ptr_vector_const_h rhs, comparator_t compare)</arglist>
    </member>
    <member kind="function">
      <type>dtor_t</type>
      <name>ptr_vector_dtor</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga71b8be3b4d8cf0d937a953e46f10da51</anchor>
      <arglist>(ptr_vector_const_h pv)</arglist>
    </member>
    <member kind="function">
      <type>cloner_t</type>
      <name>ptr_vector_cloner</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gae30ca6762b568b25c5d366849b17f2e9</anchor>
      <arglist>(ptr_vector_const_h pv)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_vector_append</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga8927192371a97fe4deb5b10165fd178b</anchor>
      <arglist>(ptr_vector_h pv, void *ptr)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>ptr_vector_count</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gaba5bbb2a1785da3460830a71f5044877</anchor>
      <arglist>(ptr_vector_const_h pv)</arglist>
    </member>
    <member kind="function">
      <type>void **</type>
      <name>ptr_vector_begin</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga65e9dcda2c159482b2196ef482dd9bca</anchor>
      <arglist>(ptr_vector_h pv)</arglist>
    </member>
    <member kind="function">
      <type>void const **</type>
      <name>ptr_vector_begin_const</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gaefd036b0226280d8b6e26e71de430e6c</anchor>
      <arglist>(ptr_vector_const_h pv)</arglist>
    </member>
    <member kind="function">
      <type>void **</type>
      <name>ptr_vector_end</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga908a09ceba72165271c6c3f58e456a16</anchor>
      <arglist>(ptr_vector_h pv)</arglist>
    </member>
    <member kind="function">
      <type>void const **</type>
      <name>ptr_vector_end_const</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga2a24a2c294f89873c2a811d3a4063f18</anchor>
      <arglist>(ptr_vector_const_h pv)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>ptr_vector_at</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gaa715d1d066946582bc9aa51b90be540b</anchor>
      <arglist>(ptr_vector_h pv, size_t pos)</arglist>
    </member>
    <member kind="function">
      <type>void const *</type>
      <name>ptr_vector_at_const</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga36f4a515238525758261813740e747e7</anchor>
      <arglist>(ptr_vector_const_h pv, size_t pos)</arglist>
    </member>
    <member kind="function">
      <type>locator_t</type>
      <name>ptr_vector_search</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gaa7b2a4af0d8cbba756ccc43caf23462d</anchor>
      <arglist>(ptr_vector_const_h pv, void const *key, locator_t keylen, comparator_t compare, bool ordered)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>ptr_vector.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00094</filename>
    <includes id="a00038" name="bool.h" local="yes" imported="no">bool.h</includes>
    <member kind="typedef">
      <type>ptrdiff_t</type>
      <name>locator_t</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gad5b1a7370a8542ff91b525a07569f457</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct ptr_vector *</type>
      <name>ptr_vector_h</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga53d3a6f8db9ee9f56207eb6baeac075f</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct ptr_vector const *</type>
      <name>ptr_vector_const_h</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gae5b5deeaa7b04ff1679ee26990ba1d51</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>dtor_t</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gac2ffca6359dbd3bb111f0969e01a8f38</anchor>
      <arglist>)(void *)</arglist>
    </member>
    <member kind="typedef">
      <type>void *(*</type>
      <name>cloner_t</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga40351b934b01de391c9e84efe896bde0</anchor>
      <arglist>)(void const *)</arglist>
    </member>
    <member kind="typedef">
      <type>int(*</type>
      <name>comparator_t</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga9dfbdc7048f1ac409cc1f236b5a78a32</anchor>
      <arglist>)(void const *obj, void const *key, locator_t keylen)</arglist>
    </member>
    <member kind="function">
      <type>ptr_vector_h</type>
      <name>ptr_vector_new</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gaddcab44a9bd8249fa3d6776848036a3e</anchor>
      <arglist>(dtor_t dtor, cloner_t cloner)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_vector_dispose</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gabf7634df2d816998ff8b776ceecb3164</anchor>
      <arglist>(ptr_vector_h pv)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_vector_drop</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga6260f534b7c4b245370e9621a5dea0a7</anchor>
      <arglist>(ptr_vector_h pv)</arglist>
    </member>
    <member kind="function">
      <type>ptr_vector_h</type>
      <name>ptr_vector_copy</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga5555ff02fccf8a9e7165107492f0133d</anchor>
      <arglist>(ptr_vector_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_vector_swap</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gad7e1b9b79a1262fd4071e98cba3ae7af</anchor>
      <arglist>(ptr_vector_h lhs, ptr_vector_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_vector_assign</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gaf4516c66eb73d976a13bc3970f9b86cf</anchor>
      <arglist>(ptr_vector_h dest, ptr_vector_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_vector_insert</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gae33c020334885d0d445bc69e0125c2dd</anchor>
      <arglist>(ptr_vector_h pv, size_t pos, void const *ptr)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>ptr_vector_delete</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga6f256ea4604188749be6dbb60c100ac2</anchor>
      <arglist>(ptr_vector_h pv, size_t pos)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_vector_append</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga8927192371a97fe4deb5b10165fd178b</anchor>
      <arglist>(ptr_vector_h pv, void *ptr)</arglist>
    </member>
    <member kind="function">
      <type>dtor_t</type>
      <name>ptr_vector_dtor</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga71b8be3b4d8cf0d937a953e46f10da51</anchor>
      <arglist>(ptr_vector_const_h pv)</arglist>
    </member>
    <member kind="function">
      <type>cloner_t</type>
      <name>ptr_vector_cloner</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gae30ca6762b568b25c5d366849b17f2e9</anchor>
      <arglist>(ptr_vector_const_h pv)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>ptr_vector_count</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gaba5bbb2a1785da3460830a71f5044877</anchor>
      <arglist>(ptr_vector_const_h pv)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>ptr_vector_equal</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga29e6c6c8d263ecd087d65096dd01e229</anchor>
      <arglist>(ptr_vector_const_h lhs, ptr_vector_const_h rhs, comparator_t compare)</arglist>
    </member>
    <member kind="function">
      <type>void **</type>
      <name>ptr_vector_begin</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga65e9dcda2c159482b2196ef482dd9bca</anchor>
      <arglist>(ptr_vector_h pv)</arglist>
    </member>
    <member kind="function">
      <type>void const **</type>
      <name>ptr_vector_begin_const</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gaefd036b0226280d8b6e26e71de430e6c</anchor>
      <arglist>(ptr_vector_const_h pv)</arglist>
    </member>
    <member kind="function">
      <type>void **</type>
      <name>ptr_vector_end</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga908a09ceba72165271c6c3f58e456a16</anchor>
      <arglist>(ptr_vector_h pv)</arglist>
    </member>
    <member kind="function">
      <type>void const **</type>
      <name>ptr_vector_end_const</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga2a24a2c294f89873c2a811d3a4063f18</anchor>
      <arglist>(ptr_vector_const_h pv)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>ptr_vector_at</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gaa715d1d066946582bc9aa51b90be540b</anchor>
      <arglist>(ptr_vector_h pv, size_t pos)</arglist>
    </member>
    <member kind="function">
      <type>void const *</type>
      <name>ptr_vector_at_const</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga36f4a515238525758261813740e747e7</anchor>
      <arglist>(ptr_vector_const_h pv, size_t pos)</arglist>
    </member>
    <member kind="function">
      <type>locator_t</type>
      <name>ptr_vector_search</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gaa7b2a4af0d8cbba756ccc43caf23462d</anchor>
      <arglist>(ptr_vector_const_h pv, void const *key, locator_t keylen, comparator_t compare, bool ordered)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>report.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00095</filename>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <includes id="a00077" name="io.h" local="yes" imported="no">io.h</includes>
    <includes id="a00037" name="args.h" local="yes" imported="no">args.h</includes>
    <includes id="a00042" name="chew.h" local="yes" imported="no">chew.h</includes>
    <includes id="a00069" name="if_control.h" local="yes" imported="no">if_control.h</includes>
    <includes id="a00081" name="line_despatch.h" local="yes" imported="no">line_despatch.h</includes>
    <includes id="a00057" name="exception.h" local="yes" imported="no">exception.h</includes>
    <includes id="a00048" name="dataset.h" local="yes" imported="no">dataset.h</includes>
    <class kind="struct">report_state_s</class>
    <member kind="typedef">
      <type>report_state_t</type>
      <name>report_public_state_t</name>
      <anchorfile>a00113.html</anchorfile>
      <anchor>gacf13d73dc29be8ba65d402ee7dca8bbb</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct report_state_s</type>
      <name>report_state_t</name>
      <anchorfile>a00113.html</anchorfile>
      <anchor>ga1c7da1747b3f71da3918d960743dc959</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" static="yes">
      <type>static char const *</type>
      <name>get_comment_type_name</name>
      <anchorfile>a00111.html</anchorfile>
      <anchor>ga964c5abb18e1a47d27719d4ba4b635de</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static char const *</type>
      <name>get_linestate_name</name>
      <anchorfile>a00111.html</anchorfile>
      <anchor>ga7ae27d0d7abd752a754b2dd36f9d6298</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static char const *</type>
      <name>if_state_name</name>
      <anchorfile>a00111.html</anchorfile>
      <anchor>gae9e7127651559315b49d14ba1feaeb77</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static char const *</type>
      <name>get_linetype_name</name>
      <anchorfile>a00111.html</anchorfile>
      <anchor>gad495981fe9a2ea2a3d1b15b8cacb0d96</anchor>
      <arglist>(line_type_t type)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static size_t</type>
      <name>vformat_output</name>
      <anchorfile>a00111.html</anchorfile>
      <anchor>ga834e8ab6630196d7c1b3c49870e24299</anchor>
      <arglist>(void *dest, int *buflen, int *startoff, char const *format, va_list argp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>vreport</name>
      <anchorfile>a00111.html</anchorfile>
      <anchor>gaaa036c69921a51e21195e001a3ca5f92</anchor>
      <arglist>(reason_code_t reason, heap_str *buf, const char *format, va_list argp)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>report_initor</name>
      <anchorfile>a00113.html</anchorfile>
      <anchor>gac549826be4148b2ded7b166a6db7e5b4</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>report_finitor</name>
      <anchorfile>a00113.html</anchorfile>
      <anchor>ga1f0cba0af41b59ab35c14552d7134135</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>flatten_line</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gacb0693fb8abfb41c2877559ac11d7e59</anchor>
      <arglist>(char *line)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>line_len</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga41a73848f66cf646e879d19e759088fc</anchor>
      <arglist>(char const *str)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>exitcode</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gaa5997b4e7423635ef1059d34b6a84c32</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_exit_flags</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga2470cb1c90979f514cd095e63d8152f1</anchor>
      <arglist>(int bits)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_exit_flags</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gac840a1a1b1e53f6c7ace3b8108621f04</anchor>
      <arglist>(int bits, bool set)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>format_output</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga7fdd6747e501bdb21f695de2a18a0a95</anchor>
      <arglist>(void *dest, int *buflen, int *startoff, char const *format,...)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>report</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gac4565af45d8998e9285f20fe9b58816e</anchor>
      <arglist>(reason_code_t reason, heap_str *buf, const char *format,...)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>parse_error</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gac2096fcc013d5a234b810aa60e26d80b</anchor>
      <arglist>(int reason, const char *format,...)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>give_up_confused</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga772d174dfc673c5d135611548db234c5</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>vbail</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gae6facc201f9b53fa278659eab369b6e6</anchor>
      <arglist>(int reason, const char *msg, va_list argp)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>bail</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga2d3f8efe9fe0bb4bed1fc0aaf946a259</anchor>
      <arglist>(int reason, const char *format,...)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>debugging</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gae8e95ce5c8c243c69a9b3295971f742d</anchor>
      <arglist>(bool on)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>debug</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga1e4bbb597bef56b0175dba73931254ad</anchor>
      <arglist>(dbg_code_t how,...)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>exit_diagnostics</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gad8688ef86b0841005980934adc842f84</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>orphan_elif</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gad701ec384c4e018b40f3c72d2267e156</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>orphan_else</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gadbd394ac50e17a2fe8c4eb5bc1966518</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>orphan_endif</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gac92811186bf3afff06c712f2f5e1915a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>early_eof</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gaf054c3111e400ebb0e0ddea39a215ab1</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>processing_file</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gab6e612d29282402432fab7ec50c60f31</anchor>
      <arglist>(char const *filename)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>entering_dir</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gac388e3a1469b06a381361e90ebd9c6aa</anchor>
      <arglist>(char const *dirname)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>leaving_dir</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga65ded7c9bfeed1a03f7083cb6ef5e8d0</anchor>
      <arglist>(char const *dirname)</arglist>
    </member>
    <member kind="function">
      <type>heap_str</type>
      <name>concatenate</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga8e3e53db5526d52a8f449eaa080e861a</anchor>
      <arglist>(size_t count, char *strs[], int punctch)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>report_symbol</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gac2ba59f3a79b7c3db4aefcb80ab99514</anchor>
      <arglist>(symbol_h sym)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>report_include</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga5e2b3a6f07d4f577588a0710c14721cd</anchor>
      <arglist>(hash_include_const_h inc_arg)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>report_directive</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gaea0b5c3d2faaf2b618d5713b4479e791</anchor>
      <arglist>(canonical_string_const_h cl, directive_type_t directive_type)</arglist>
    </member>
    <member kind="function">
      <type>char *</type>
      <name>format_int</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga9e650602dcaf1e251f474beb31cbc02d</anchor>
      <arglist>(int_spec_t const *int_spec)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static char const *const</type>
      <name>comment_name</name>
      <anchorfile>a00111.html</anchorfile>
      <anchor>ga4e837c3c9e17ba85d27ee179131bdaa2</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static char const *const</type>
      <name>linestate_name</name>
      <anchorfile>a00111.html</anchorfile>
      <anchor>ga155b2dfed8eae304125d454bfb935b8f</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static char const *const</type>
      <name>ifstate_name</name>
      <anchorfile>a00111.html</anchorfile>
      <anchor>ga6794bc21dbd861508079b20391eb3905</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static char const *const</type>
      <name>linetype_name</name>
      <anchorfile>a00111.html</anchorfile>
      <anchor>gaaf3d695e69f6bd5da91ec4538b350921</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static report_state_t</type>
      <name>report_state</name>
      <anchorfile>a00113.html</anchorfile>
      <anchor>ga4df1c1827d274b042c93125571add33e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>report_state_t *</type>
      <name>report_h</name>
      <anchorfile>a00113.html</anchorfile>
      <anchor>ga011a2cdd772388b661bf58cf6910be50</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>report_public_state_t *</type>
      <name>report_public_h</name>
      <anchorfile>a00113.html</anchorfile>
      <anchor>gaa26d45b63691a87d5009db4ae80995d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const report_state_t *const</type>
      <name>report_static_initialiser_h</name>
      <anchorfile>a00113.html</anchorfile>
      <anchor>gaf2dedcb5abfb1d2caaddbaff297e53b0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>report_init_h</name>
      <anchorfile>a00113.html</anchorfile>
      <anchor>ga01d665fe52045072e0a012eec0da003d</anchor>
      <arglist>)(report_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>report_finis_h</name>
      <anchorfile>a00113.html</anchorfile>
      <anchor>ga17550d4defdfcf2a2e101445216ca700</anchor>
      <arglist>)(report_state_t *)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>report.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00096</filename>
    <includes id="a00098" name="state_utils.h" local="yes" imported="no">state_utils.h</includes>
    <includes id="a00067" name="hash_include.h" local="yes" imported="no">hash_include.h</includes>
    <includes id="a00050" name="directives_tally.h" local="yes" imported="no">directives_tally.h</includes>
    <includes id="a00088" name="memory.h" local="yes" imported="no">memory.h</includes>
    <member kind="enumeration">
      <name>reason_code_t</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga1f47912ac2bb5db6784016a07f5baa10</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGCLASS_SHIFT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a908c07266ff0804e89c6b1b0ae0d6ff1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ISSUE_MASK</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a5c12bec3054946a371b735fbac2a885e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGCLASS_NONE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a8d17ab824f73c674d64ae0dd5ff7a68c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGCLASS_PROGRESS</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a0ea5b4e1c50ca0253f2796beb30d73f8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGCLASS_INFO</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a06bc57a3e3746c89aa15130bfcf2be95</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGCLASS_WARNING</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a5ce1baec495f156760743a5eb45c2583</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGCLASS_ERROR</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a41e70e8785be2e020be378ee05f6346e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGCLASS_ABEND</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a933e1c85dbd677e444a1b9f8692394a6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGCLASS_SUMMARY</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a620c28df8c15e9ccec19aa12b42c0427</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGCLASS_MASK</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10aa4355780718ebd747405fdd9f7a8875a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGSEVERITY_MASK</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ac7ef0c85553cef0e7c438cfb7f427997</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGEVENT_MASK</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a29003c371e8f48dc84196b28bdba7b61</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVENT_SUMMARY_MIN</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10af259bcc335c6567d6314fb8179ad628d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVENT_SUMMARY_DROPPED_LINES</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a8e5d8642576413fedfb8fea890b045d5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVENT_SUMMARY_CHANGED_LINES</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a726913a59a88f40a5b4bd8f6b94aca03</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVENT_SUMMARY_ERRORED_LINES</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10af79346bfd9f7cad6df43e0bbf3583913</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVENT_SUMMARY_ERROR_OUTPUT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10adf5e665fd2a6dbaf1366a1c8f5347380</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVENT_SUMMARY_MAX</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10af8df0bdf8f371b4783bc501915709eab</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVENT_SUMMARY_MASK</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10aa5c27940e38ef53bbb98ade08e150e35</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_SHIFT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10abe0c41d6657eb275acd38f2b5aa9b78a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_PROCESSING_FILE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a82550c5a00f0539986db22df982f494d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_ENTERING_DIR</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a7eb6e33a048cb402b0148da5e8eaf3ec</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_LEAVING_DIR</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a2b216ed6fc3945f811ee4b1c71dbfa1c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_BUILDING_TREE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10abc3cfd260041d20a992461e6199e637e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_SEARCHING_DIR</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10afdb388b40ed67dfa69d13012d0bf50ee</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_ADDED_FILE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ae248a3e668f3c9a32c055bd52c1d8b6b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_ADDED_DIR</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a03bda2eb7a688dc679fd819d7c15df4a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_FILE_TALLY</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a14171c9d3c39e7b27e0f18ca029989e0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_GOT_OPTIONS</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a4ac95f09b67f2579bae44fcde895cdfd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_SUMMARY_SHIFT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a8940646eaea49f0c2d9aea4c3f2255aa</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_SUMMARY_FILES_REACHED</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a8c498605ac309c2304c6a5a0e102acc7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_SUMMARY_FILES_DROPPED</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a4379680a52906c0beafa28e927e6dd2d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_SHIFT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ad481c518fc9e5f3f4a7eadbc2015398f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_DUPLICATE_MASK</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10aaaf89b57d60d6096d41166b49bc9e216</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_SYMLINK</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ac7a4398ea7306305b5f400ac1f6983bd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_STRAIGHTENED_LINE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ab5f74c675ca4daa685848a3cb59b44c7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_REDUNDANT_OPTION</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ab02de913f5734c0d55cdf86d2992ac6f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_DUPLICATE_ARGS</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a4aea54ca2d6e856f131c435a42a1a9ed</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_DELETED_CONTRADICTION</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a51ad2e4e8a1a2b1f0856bcab358146e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_COMMENTED_CONTRADICTION</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a6caac539f717481da84ac0cf73a16769</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_ERRORED_CONTRADICTION</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a4975cfc234c454d287df4247d4832960</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_DIFFERING_REDEF</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ae4513fb82bf1770ac84b0f2168dcb171</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_UNDEFING_DEFINED</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a28d72b5b59c414d8f8655e51c57ad246</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_UNCONDITIONAL_ERROR_INPUT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10aba43089170d42b58fc1ea6e44dc89fa5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_UNCONDITIONAL_ERROR_OUTPUT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ae00cadd6e1ab04c9e0ed547e4c28f624</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_GARBAGE_AFTER_DIRECTIVE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10aa588e31e656f580325cccf9685160335</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_MISSING_EOF_NEWLINE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a781df871e778ccb0c6ecb3623a252742</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_CIRCULAR_SYM_DEF</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a1e93de8a12fbedd5c71c13be6b9be54e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_VERBOSE_ONLY</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10aab431cd6c701d771d8388866107b8f7b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_ZERO_DIVIDE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ad4e0d91cbae230652d0dcb557b9cd943</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_DIR_IGNORED</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a44904e9295a80871d7107bec9a3017da</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_EMPTY_SYMBOL</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a29f4ff306518cb509ed70a16920ea5cb</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_UNKNOWN_DIRECTIVE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a09d882736922cbe54effd65e295fda42</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_INVALID_INCLUDE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10aa286db7c91e615b42b687f4a903eeff4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_STRAY_ESCAPE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ae203a49147f2b05738ec481b6346a51e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_FUNCTION_LIKE_MACRO_EXPANSION</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a8517038683d509e5d378b55daa7f9314</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_INT_OVERFLOW</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ab1f4cf166510f04bd87da179cb2946d8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_UNCLOSED_QUOTE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a7b03293e16c09f6bc83f056360184bf1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_NEGATIVE_SHIFT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ad2ac08c1d6270d0f90b7b07e5a3355a3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_FORCED_UNSIGNED</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ad15e3c466caf6da045207c1e8242f21c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_SIGN_CHANGED</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a3adee8adabf6ed68839fb161f398cac5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_SHIFT_OVERFLOW</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a7cced3652070d7e8fdf189b0b8294b36</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_CHAR_CONSTANT_TOO_LONG</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a28546dcf6afe4eddbb5a84feebe86947</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_MULITBYTE_CHAR_CONSTANT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ac09b072c1a15f2bc53479e907a84faae</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_TRANSIENT_SYMBOL_ADDED</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a66bda50faabdd2b68b37f82bfba52f11</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_INSOURCE_FUNCTION_LIKE_MACRO_DEFINITION</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a0f93b9f2ab10201d2a1cd9e6ea4232b0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_NO_SYMS</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a85bd819fcf9a60c9ce5531b24a0b9c65</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_ORPHAN_ELIF</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10aa1928f6421f7f64398a6e8c6259e7efc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_ORPHAN_ELSE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ad13c362b76ccb269816b187bc3b5d7fd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_ORPHAN_ENDIF</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a75e4b2c2fbb0a2f14585df250b1e08bc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_EOF_TOO_SOON</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a3c2d0ecdd00cff6cf6de5323180d1524</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_EOF_IN_COMMENT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10aee5b72c817aa723a3dcfa44cb962e6fc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_EOF_IN_QUOTE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a8e1d15a7c523dc76a4a5e697bd4b6bfe</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_NOTHING_TO_DO</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a945358c430994a324b24c1fb2942f9ff</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_ONE_FILE_ONLY</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a105d4faaadec0b2be2c71b146f8ea10b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_NEWLINE_IN_QUOTE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ad06c43d4b92b19c491f099143211c770</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_INVALID_ARGS</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10abb0ca5e9f36e507dd641c5cdfcaa8405</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_USAGE_ERROR</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10afe748516c5cfd3b00121d17b93e578a6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_TOO_DEEP</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a3584a1c6b5935f9f8b67176cf5c550f9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_MULTIPLE_ARGFILES</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ad5445c2b3cfdf84b92f67e9f2e0cf8d2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_GARBAGE_ARG</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a31e291ca5c2c8263254d7564cbd94d85</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_NOT_IDENTIFIER</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ae6ac7e945544e0c375ee5da23c7d47f2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_UNBALANCED_PAREN</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a8a09d02435b578a9e0ff09e239ffc660</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_GLOBAL_FUNCTION_LIKE_MACRO_DEFINITION</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10addce9c99b25ef7de90b2147841ecbbfc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_IF_WITHOUT_COND</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ac0d7994cda3ba012341cc557ab38422c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_CANT_OPEN_INPUT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ab830094b3a53aeb4f2cf25c5d4cce289</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_OUT_OF_MEMORY</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a612610c9be2e4f5ecbe3b894bf37f2b6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_FILENAME_TOO_LONG</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a752a7fd5c15c75901ce9026470adfc01</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_EOF_IN_FILENAME</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10addacde67fce07d78b91c548f27201f1a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_CONFUSED</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ab627d359fed55b1100bba7c70d2d4863</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_CANT_READ_INPUT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ab3505f713fd463fccbc1a87455fdbbd5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_CANT_WRITE_FILE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a9c8739fcc93b2468b41badb13010a330</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_NO_FILE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a88d9b73d834c5b9eaf353b9ff010613e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_ILLEGAL_FILENAME</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a8f3acd64e86b959f9b5349f333a9978d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_CANT_DELETE_FILE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a554d9c628a391608f02c56ae96776486</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_CANT_RENAME_FILE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a581ade1f909f0e48bcc3ce06e9d5da8a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_NO_TEMPFILE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10addbf163886d1890d0c3d0b103a9bd52a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_CANT_OPEN_DIR</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a33d4619b81cb8dee76b0aae2f32f03c7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_CANT_READ_DIR</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a5d9cb7acd2d5c807ed4e89bf84f1f03f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>dbg_code_t</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gacc375ce3fb934c742ec2f03141f9ff6c</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_exit_flags</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gac840a1a1b1e53f6c7ace3b8108621f04</anchor>
      <arglist>(int bits, bool set)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_exit_flags</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga2470cb1c90979f514cd095e63d8152f1</anchor>
      <arglist>(int bits)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>exitcode</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gaa5997b4e7423635ef1059d34b6a84c32</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>line_len</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga41a73848f66cf646e879d19e759088fc</anchor>
      <arglist>(char const *str)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>flatten_line</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gacb0693fb8abfb41c2877559ac11d7e59</anchor>
      <arglist>(char *line)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>report</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gac4565af45d8998e9285f20fe9b58816e</anchor>
      <arglist>(reason_code_t reason, heap_str *buf, const char *format,...)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>parse_error</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gac2096fcc013d5a234b810aa60e26d80b</anchor>
      <arglist>(int reason, const char *format,...)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>give_up_confused</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga772d174dfc673c5d135611548db234c5</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>vbail</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gae6facc201f9b53fa278659eab369b6e6</anchor>
      <arglist>(int reason, const char *msg, va_list argp)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>bail</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga2d3f8efe9fe0bb4bed1fc0aaf946a259</anchor>
      <arglist>(int retcode, const char *format,...)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>debugging</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gae8e95ce5c8c243c69a9b3295971f742d</anchor>
      <arglist>(bool on)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>debug</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga1e4bbb597bef56b0175dba73931254ad</anchor>
      <arglist>(dbg_code_t how,...)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>exit_diagnostics</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gad8688ef86b0841005980934adc842f84</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>orphan_elif</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gad701ec384c4e018b40f3c72d2267e156</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>orphan_else</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gadbd394ac50e17a2fe8c4eb5bc1966518</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>orphan_endif</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gac92811186bf3afff06c712f2f5e1915a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>early_eof</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gaf054c3111e400ebb0e0ddea39a215ab1</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>processing_file</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gab6e612d29282402432fab7ec50c60f31</anchor>
      <arglist>(char const *filename)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>entering_dir</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gac388e3a1469b06a381361e90ebd9c6aa</anchor>
      <arglist>(char const *dirname)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>leaving_dir</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga65ded7c9bfeed1a03f7083cb6ef5e8d0</anchor>
      <arglist>(char const *dirname)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>format_output</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga7fdd6747e501bdb21f695de2a18a0a95</anchor>
      <arglist>(void *dest, int *buflen, int *startoff, char const *format,...)</arglist>
    </member>
    <member kind="function">
      <type>heap_str</type>
      <name>concatenate</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga8e3e53db5526d52a8f449eaa080e861a</anchor>
      <arglist>(size_t count, char *strs[], int punctch)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>report_symbol</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gac2ba59f3a79b7c3db4aefcb80ab99514</anchor>
      <arglist>(symbol_h sym)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>report_include</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga5e2b3a6f07d4f577588a0710c14721cd</anchor>
      <arglist>(hash_include_const_h inc_arg)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>report_directive</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gaea0b5c3d2faaf2b618d5713b4479e791</anchor>
      <arglist>(canonical_string_const_h cl, directive_type_t directive_type)</arglist>
    </member>
    <member kind="function">
      <type>char *</type>
      <name>format_int</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga9e650602dcaf1e251f474beb31cbc02d</anchor>
      <arglist>(int_spec_t const *int_spec)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>report_initor</name>
      <anchorfile>a00112.html</anchorfile>
      <anchor>gac549826be4148b2ded7b166a6db7e5b4</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>report_finitor</name>
      <anchorfile>a00112.html</anchorfile>
      <anchor>ga1f0cba0af41b59ab35c14552d7134135</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>state_utils.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00097</filename>
    <includes id="a00088" name="memory.h" local="yes" imported="no">memory.h</includes>
    <includes id="a00098" name="state_utils.h" local="yes" imported="no">state_utils.h</includes>
    <member kind="function">
      <type>void</type>
      <name>component_initor</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga4b99b02ef94e4f34c6cdcf000212fe76</anchor>
      <arglist>(bool is_static, bool is_zero_initable, void **state, void **public_state, void const *initialiser, size_t size, void(*user_init)())</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>component_finitor</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga8e93afb8d678d29a118ed07515df43f1</anchor>
      <arglist>(bool is_static, void **state, void **public_state, void(*user_finis)())</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>state_utils.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00098</filename>
    <includes id="a00038" name="bool.h" local="yes" imported="no">bool.h</includes>
    <member kind="define">
      <type>#define</type>
      <name>IMPLEMENT_STATIC</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>ga37125835cd0d1b5a1bfe07cdb20f8036</anchor>
      <arglist>(component, init_type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IMPLEMENT_DYNAMIC</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>gad83672127edf257d9c4c38c3b9732100</anchor>
      <arglist>(component, init_type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IMPLEMENT</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>ga713979eee38cc6a1d52434f7e7438af8</anchor>
      <arglist>(component, init_type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USE_STATIC_INITIALISER</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>gab9b0eba71b2372ccbed9b9e723a69cdd</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DEFINE_USER_INIT</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>ga3e7cc46107ba9b18a79c5b5d70d7e0e3</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DEFINE_USER_FINIS</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>gaa4789516ab4fa4f97d1d769388f212ef</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>INCLUDE_PUBLIC</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>ga46760241d1dad90208e996854f817293</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>STATE_DEF</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>gab2604307342e976ccb8e62ac14822506</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>STATE_T</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>ga9f3eca9f1731ba468a67251c03924cc4</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>NO_PRIVATE_STATE</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>ga5ce61c25d0585da4ceea6cc9785d2fe9</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>GET_STATE</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>ga74a4caf2b9990357e3797ecbe21b75d3</anchor>
      <arglist>(component, field)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_STATE</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>ga24b10a6cf1a4effe48db96a534960ba8</anchor>
      <arglist>(component, field)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PUBLIC_STATE_DEF</name>
      <anchorfile>a00124.html</anchorfile>
      <anchor>ga5853e4befe15a5635cd53dfdbb2c80c5</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PUBLIC_STATE_T</name>
      <anchorfile>a00124.html</anchorfile>
      <anchor>ga5616da648658a96640b9b49a0ea6dd42</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>NO_PUBLIC_STATE</name>
      <anchorfile>a00124.html</anchorfile>
      <anchor>ga53dfc957577cb8396fcacbfd7228970a</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IMPORT</name>
      <anchorfile>a00124.html</anchorfile>
      <anchor>gaaef2037cb1ca5eee2abbae229fa2fdc0</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>INITIALISE</name>
      <anchorfile>a00098.html</anchorfile>
      <anchor>a6c7deb4ca98569d1b121fcf3394e0a18</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>FINALISE</name>
      <anchorfile>a00098.html</anchorfile>
      <anchor>a6694c8983ad5c284bfcfb8d25e0eaaa9</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>REINITIALISE</name>
      <anchorfile>a00098.html</anchorfile>
      <anchor>a7a31778d88a029b4b47c01c02dd627e1</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>GET_PUBLIC</name>
      <anchorfile>a00098.html</anchorfile>
      <anchor>af106abdeddaae495751648f9a2b751ec</anchor>
      <arglist>(component, field)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_PUBLIC</name>
      <anchorfile>a00098.html</anchorfile>
      <anchor>a16989cd49532730320bc62fb744ee29b</anchor>
      <arglist>(component, field)</arglist>
    </member>
    <member kind="enumeration">
      <name>component_storage_type</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>ga3a66b0ce3fafa3ab2e00bef4d5c6aad1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_STATIC</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>gga3a66b0ce3fafa3ab2e00bef4d5c6aad1a9537eb2ecf1784c80309cb58ddf7f01b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_DYNAMIC</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>gga3a66b0ce3fafa3ab2e00bef4d5c6aad1a27a86856327a306d56584d1fbe81cb2a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>component_initialisation_type</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>ga2576975acf6cc64ad22bed3cf4b8943e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ZERO_INITABLE</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>gga2576975acf6cc64ad22bed3cf4b8943ead02cd729559e58e246f22cf5c8a4f9f8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATIC_INITABLE</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>gga2576975acf6cc64ad22bed3cf4b8943ea8b7b60515620ae90cdb922168f222d57</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>USER_INITABLE</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>gga2576975acf6cc64ad22bed3cf4b8943ea796707110a905cb47c35066d44628dbc</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>STATE_ALLOCATOR</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gace0bb906bc86deb6fa345b953c62bbb6</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>STATE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga661775ff6ca411d3680d6ff321b311f6</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PUBLIC_STATE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga5861c57320b4f92fed80b14e0355bbe7</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>HANDLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gae4f216f1ef4de55f26212882ecd180dc</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PUBLIC_HANDLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga6fdd64dbee12c609f1728b5b9e2738e2</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USER_INIT</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga992afb0548c72ab8d7f94f1f57216909</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USER_FINIS</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gac621dd2d7ae9b4f6b734866e5b841ff2</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USER_INIT_HANDLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gac687e990b4cced650da9411a7dd46399</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USER_FINIS_HANDLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga0f0dbb45c0624bf6232d691d15c68663</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>INITOR</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga8cc31e925eed6fd1e60da6b9c5f67b69</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>FINITOR</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gaa78dc566cd11e7df6834143e36aa9c2b</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>STATIC_INITIALISER</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gaf16afe721493ea3309ab3cd90dcdd645</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>STATIC_INITIALISER_HANDLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga525ccbf46260e48ca875cb6e019feea9</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>STORAGE_TYPE_TAG</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga0c6b70561b45fd43691978fad5a67df6</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>INITIALISATION_TYPE_TAG</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga1062e687b02bb91a530f62947d77e617</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DECL_USER_INIT</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga278095a71b5aa11b1068a95a4bfc5b27</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DECL_USER_FINIS</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga932f87f0cae4ab8f8140d9ba624f8998</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DECL_USER_INIT_HANDLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gaf6dc846b6cc65b061e00de38d9e3d937</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DECL_USER_FINIS_HANDLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga53928e229e402a5c71960ffe5abcf7dd</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DECL_INITOR</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gabf292864d91044cf7585e41356163beb</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DECL_FINITOR</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga3e5ce9d538aced417376fdb4c193cd2a</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DECL_STATIC_INITIALISER</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga293f3c19415f1b86821c675f5e2a7393</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DECL_STATIC_INITIALISER_HANDLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga396e3a1c956e916df0a94b2f827addab</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SELECT_STATIC</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gacc0a7e12d04eec8442c36dc189fb5afe</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SELECT_DYNAMIC</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga6ad783530b586a9ec3500b77f1944804</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SELECT_INITIALISATION_TYPE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gaec464de907b8c272dec50b2c094e218e</anchor>
      <arglist>(component, init_type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SELECT_ZERO_INITABLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gafb243d023cc5bb48597c8c6e43544108</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SELECT_STATIC_INITABLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gac60daf04dc421e7c61fdfc6bb675a8b1</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SELECT_USER_INITABLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga7804bd64e9378c9c9e026cb721b97d5f</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IS_STATIC</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga17d2d5f0009fee4df579b8e07aba2291</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IS_ZERO_INITABLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gacf5c814dbb5451102f658e5627c61f56</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>HAS_STATIC_INITIALISER</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga9c9325cc5b16420cc668f87fb4d75895</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>HAS_USER_INIT</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga78067a2e3d3e8f35c28ca6b1359b6b77</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DECL_DYNAMIC_STATE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga2605787d754665578029856a1e30896a</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DECL_STATIC_STATE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gad40837c321ad95366c00086431cd8788</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IMPORT_INITOR</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gaf25915b1d2cdb096ccb90a192cfa91c1</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IMPORT_FINITOR</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga7ddc1842dc57656b898f5fd43701a4f6</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IMPORT_STATE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gadd89fe83a22718f366241d473df9131d</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>GET_STATE_BY_HANDLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga2433047f894ac9d203ed91f3271af572</anchor>
      <arglist>(component, field)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_STATE_BY_HANDLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga52d667e6699bcd9e6b81a6ecaa4a9341</anchor>
      <arglist>(component, field)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>GET_STATIC_STATE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gac50bc0c54c28a7ac14d5e50fdbfe7d1e</anchor>
      <arglist>(component, field)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_STATIC_STATE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga90e288181bb9b79e23cb199f43dc392b</anchor>
      <arglist>(component, field)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DEFINE_INITOR</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gae02b194225759fa34abdb8f5a1b2b88e</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DEFINE_FINITOR</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga1dbb93a20e8d3da1bdb4272871c0388d</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>component_initor</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga4b99b02ef94e4f34c6cdcf000212fe76</anchor>
      <arglist>(bool is_static, bool is_zero_initable, void **state, void **public_state, void const *initialiser, size_t size, void(*user_init)())</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>component_finitor</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga8e93afb8d678d29a118ed07515df43f1</anchor>
      <arglist>(bool is_static, void **state, void **public_state, void(*user_finis)())</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>swiss_army.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00099</filename>
    <includes id="a00089" name="opts.h" local="yes" imported="no">opts.h</includes>
    <member kind="define">
      <type>#define</type>
      <name>PODSWAP</name>
      <anchorfile>a00099.html</anchorfile>
      <anchor>add720076276acc267e82e48bfd69743b</anchor>
      <arglist>(Type, lhs, rhs)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>symbol.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00100</filename>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <includes id="a00042" name="chew.h" local="yes" imported="no">chew.h</includes>
    <includes id="a00055" name="evaluator.h" local="yes" imported="no">evaluator.h</includes>
    <includes id="a00044" name="configured_symbols.h" local="yes" imported="no">configured_symbols.h</includes>
    <includes id="a00077" name="io.h" local="yes" imported="no">io.h</includes>
    <includes id="a00046" name="contradiction.h" local="yes" imported="no">contradiction.h</includes>
    <includes id="a00037" name="args.h" local="yes" imported="no">args.h</includes>
    <includes id="a00099" name="swiss_army.h" local="yes" imported="no">swiss_army.h</includes>
    <includes id="a00085" name="line_select.h" local="yes" imported="no">line_select.h</includes>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>symbol_init</name>
      <anchorfile>a00214.html</anchorfile>
      <anchor>ga18e950a50e8f23d82bc88abbbb392668</anchor>
      <arglist>(symbol_h sym, char const *name, size_t namelen)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>symbol_copy_init</name>
      <anchorfile>a00214.html</anchorfile>
      <anchor>gafa188374cc79e3dab9801b85e4cfdb00</anchor>
      <arglist>(symbol_h dest, symbol_const_h src)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>symbol_name_compare</name>
      <anchorfile>a00214.html</anchorfile>
      <anchor>gac0c10e67d5e28d2cce80805b08d3065b</anchor>
      <arglist>(symbol_const_h sym, char const *name, size_t namelen)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>report_symbol_configuration</name>
      <anchorfile>a00214.html</anchorfile>
      <anchor>ga2d786b42c269b1803689dcb18c4bd3e2</anchor>
      <arglist>(bool define, int gripe, symbol_const_h sym, canonical_string_const_h old_def, canonical_string_const_h new_def, char const *tail)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static canonical_string_h</type>
      <name>symbol_definition_resolve</name>
      <anchorfile>a00214.html</anchorfile>
      <anchor>gab97c9221309b21fe5c3205077b286d48</anchor>
      <arglist>(symbol_const_h sym, ptr_vector_h history)</arglist>
    </member>
    <member kind="function">
      <type>symbol_h</type>
      <name>symbol_new</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gac3b51b542091b5759ab203c0f4c68a1d</anchor>
      <arglist>(char const *name, size_t namelen)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>symbol_dispose</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gabe68c5ef0eb5772d0d3ac02c68fd21cf</anchor>
      <arglist>(symbol_h sym)</arglist>
    </member>
    <member kind="function">
      <type>symbol_h</type>
      <name>symbol_copy</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga6adc243becd6b4b117d1a3051470b37f</anchor>
      <arglist>(symbol_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>symbol_swap</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga069895e5bb663519d33c668f867b5b5a</anchor>
      <arglist>(symbol_h lhs, symbol_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>symbol_assign</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga4f72cac51dae41ab70333a946d34cea9</anchor>
      <arglist>(symbol_h dest, symbol_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>symbol_equal</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga34b51acddb0c982f98c9c6089d7e77e1</anchor>
      <arglist>(symbol_const_h lhs, symbol_const_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>line_type_t</type>
      <name>symbol_define</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gabbb01748a8e92c7e099fe13c73933d6d</anchor>
      <arglist>(symbol_h sym, char const *tail, char const **pend)</arglist>
    </member>
    <member kind="function">
      <type>line_type_t</type>
      <name>symbol_undefine</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gaec5bc2d5b53898df220c244fa052aba4</anchor>
      <arglist>(symbol_h sym, char const *tail, char const **pend)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>symbol_name</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gac69a5d85f32c37e5ec429db887a2512d</anchor>
      <arglist>(symbol_const_h sym)</arglist>
    </member>
    <member kind="function">
      <type>canonical_string_const_h</type>
      <name>symbol_definition</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gab395566be53ca470a559879a2766bf73</anchor>
      <arglist>(symbol_const_h sym)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>symbol_compare</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga80747dd0ef4c75cd0e5d476f24a1ee7e</anchor>
      <arglist>(symbol_const_h lhs, void const *rhs, size_t len)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>symbol_is_legal</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga92ae58559b23b4f7de9b9d3f7b6da5c8</anchor>
      <arglist>(char const *tok, size_t toklen)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>symbol_is_configured</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gad2e061fd99107c3f87b5ce1672907921</anchor>
      <arglist>(symbol_const_h sym)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>symbol_is_global</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gac704f21c07b59ab515b511a8999d72c3</anchor>
      <arglist>(symbol_const_h sym)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_symbol_start_char</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga995707ab23507b83334c306e7be98f3d</anchor>
      <arglist>(char cp)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_symbol_inner_char</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gab0332fdb5b342f0e45e9df5cd20c641f</anchor>
      <arglist>(char cp)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>symbol_reported</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga93904a4d3e07b5e79fd9cd84d972363b</anchor>
      <arglist>(symbol_const_h sym)</arglist>
    </member>
    <member kind="function">
      <type>canonical_string_const_h</type>
      <name>symbol_resolve</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga4add501589e09bfff807f3160fb589eb</anchor>
      <arglist>(symbol_h sym, ptr_vector_h history)</arglist>
    </member>
    <member kind="function">
      <type>line_type_t</type>
      <name>symbol_evaluate_status</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gab21ffd5e3ac80fcf04e1eb608db23f75</anchor>
      <arglist>(bool define, char const *symstart, const char *tail, const char **pend)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>symbol.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00101</filename>
    <includes id="a00038" name="bool.h" local="yes" imported="no">bool.h</includes>
    <includes id="a00040" name="canonical_string.h" local="yes" imported="no">canonical_string.h</includes>
    <includes id="a00053" name="eval_result.h" local="yes" imported="no">eval_result.h</includes>
    <includes id="a00094" name="ptr_vector.h" local="yes" imported="no">ptr_vector.h</includes>
    <member kind="typedef">
      <type>struct eval_result *</type>
      <name>symbol_h</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gadbd94efe451bd35fd3edc77f031a491f</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct eval_result const *</type>
      <name>symbol_const_h</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga8741b7ee3cce967ec0e2171798564f51</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>symbol_h</type>
      <name>symbol_new</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gac3b51b542091b5759ab203c0f4c68a1d</anchor>
      <arglist>(char const *name, size_t namelen)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>symbol_dispose</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gabe68c5ef0eb5772d0d3ac02c68fd21cf</anchor>
      <arglist>(symbol_h sym)</arglist>
    </member>
    <member kind="function">
      <type>symbol_h</type>
      <name>symbol_copy</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga6adc243becd6b4b117d1a3051470b37f</anchor>
      <arglist>(symbol_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>symbol_swap</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga069895e5bb663519d33c668f867b5b5a</anchor>
      <arglist>(symbol_h lhs, symbol_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>symbol_assign</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga4f72cac51dae41ab70333a946d34cea9</anchor>
      <arglist>(symbol_h dest, symbol_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>symbol_equal</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga34b51acddb0c982f98c9c6089d7e77e1</anchor>
      <arglist>(symbol_const_h lhs, symbol_const_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>line_type_t</type>
      <name>symbol_define</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gabbb01748a8e92c7e099fe13c73933d6d</anchor>
      <arglist>(symbol_h sym, char const *tail, char const **pend)</arglist>
    </member>
    <member kind="function">
      <type>line_type_t</type>
      <name>symbol_undefine</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gaec5bc2d5b53898df220c244fa052aba4</anchor>
      <arglist>(symbol_h sym, char const *tail, char const **pend)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>symbol_name</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gac69a5d85f32c37e5ec429db887a2512d</anchor>
      <arglist>(symbol_const_h sym)</arglist>
    </member>
    <member kind="function">
      <type>canonical_string_const_h</type>
      <name>symbol_definition</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gab395566be53ca470a559879a2766bf73</anchor>
      <arglist>(symbol_const_h sym)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>symbol_compare</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga80747dd0ef4c75cd0e5d476f24a1ee7e</anchor>
      <arglist>(symbol_const_h lhs, void const *rhs, size_t namelen)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>symbol_is_legal</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga92ae58559b23b4f7de9b9d3f7b6da5c8</anchor>
      <arglist>(char const *tok, size_t toklen)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>symbol_is_configured</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gad2e061fd99107c3f87b5ce1672907921</anchor>
      <arglist>(symbol_const_h sym)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>symbol_is_global</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gac704f21c07b59ab515b511a8999d72c3</anchor>
      <arglist>(symbol_const_h sym)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_symbol_start_char</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga995707ab23507b83334c306e7be98f3d</anchor>
      <arglist>(char cp)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_symbol_inner_char</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gab0332fdb5b342f0e45e9df5cd20c641f</anchor>
      <arglist>(char cp)</arglist>
    </member>
    <member kind="function">
      <type>canonical_string_const_h</type>
      <name>symbol_resolve</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga4add501589e09bfff807f3160fb589eb</anchor>
      <arglist>(symbol_h sym, ptr_vector_h history)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>symbol_reported</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga93904a4d3e07b5e79fd9cd84d972363b</anchor>
      <arglist>(symbol_const_h sym)</arglist>
    </member>
    <member kind="function">
      <type>line_type_t</type>
      <name>symbol_evaluate_status</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gab21ffd5e3ac80fcf04e1eb608db23f75</anchor>
      <arglist>(bool define, char const *symstart, const char *tail, const char **pend)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>unconfigured_symbols.c</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00102</filename>
    <includes id="a00103" name="unconfigured_symbols.h" local="yes" imported="no">unconfigured_symbols.h</includes>
    <includes id="a00096" name="report.h" local="yes" imported="no">report.h</includes>
    <member kind="typedef">
      <type>unconfigured_symbols_public_state_t</type>
      <name>unconfigured_symbols_state_t</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>gac4290e61b59aaaf5665f8b14f4c852c3</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unconfigured_symbols_initor</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>ga83b6a380f97ab924304e572e7233da87</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unconfigured_symbols_finitor</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>ga47ec5582b7cb6732f0c920af8d76e295</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unconfigured_symbols_init</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>ga413c5596722daf89cefa1045164a0658</anchor>
      <arglist>(unconfigured_symbols_state_t *)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unconfigured_symbols_finis</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>ga14a46d4817b68ae52d7e7a964d09e646</anchor>
      <arglist>(unconfigured_symbols_state_t *)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unconfigured_symbol_tally</name>
      <anchorfile>a00136.html</anchorfile>
      <anchor>ga803c23607b05cb7bd6839117a1d7de0b</anchor>
      <arglist>(char const *name, size_t namelen)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static unconfigured_symbols_state_t</type>
      <name>unconfigured_symbols_state</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>ga2d1ca31523497d23f21ecd1f4f727977</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unconfigured_symbols_state_t *</type>
      <name>unconfigured_symbols_h</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>ga42e83d712522cc68363dd78ae2382bbf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unconfigured_symbols_public_state_t *</type>
      <name>unconfigured_symbols_public_h</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>ga3df5db6e6fbaf1cf021ebd71b88fb58d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unconfigured_symbols_state_t *const</type>
      <name>unconfigured_symbols_static_initialiser_h</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>gad6fd1b89257b97ff110c30713f4a3226</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>unconfigured_symbols_init_h</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>ga57f5d1ba3c53aa088a790d3a3765b108</anchor>
      <arglist>)(unconfigured_symbols_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>unconfigured_symbols_finis_h</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>ga1b1de7dd797e98427fbae4f6a4fd5919</anchor>
      <arglist>)(unconfigured_symbols_state_t *)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>unconfigured_symbols.h</name>
    <path>/home/imk/develop/coan/src/</path>
    <filename>a00103</filename>
    <includes id="a00098" name="state_utils.h" local="yes" imported="no">state_utils.h</includes>
    <includes id="a00092" name="ptr_set.h" local="yes" imported="no">ptr_set.h</includes>
    <includes id="a00101" name="symbol.h" local="yes" imported="no">symbol.h</includes>
    <class kind="struct">unconfigured_symbols_public_state_s</class>
    <member kind="typedef">
      <type>struct unconfigured_symbols_public_state_s</type>
      <name>unconfigured_symbols_public_state_t</name>
      <anchorfile>a00137.html</anchorfile>
      <anchor>ga75af76b62a5172645c2f03db96415530</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unconfigured_symbol_tally</name>
      <anchorfile>a00136.html</anchorfile>
      <anchor>ga803c23607b05cb7bd6839117a1d7de0b</anchor>
      <arglist>(char const *name, size_t len)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unconfigured_symbols_initor</name>
      <anchorfile>a00137.html</anchorfile>
      <anchor>ga83b6a380f97ab924304e572e7233da87</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unconfigured_symbols_finitor</name>
      <anchorfile>a00137.html</anchorfile>
      <anchor>ga47ec5582b7cb6732f0c920af8d76e295</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>unconfigured_symbols_public_state_t *</type>
      <name>unconfigured_symbols_public_h</name>
      <anchorfile>a00137.html</anchorfile>
      <anchor>ga3df5db6e6fbaf1cf021ebd71b88fb58d</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>io_component</name>
    <title>The I/O component.</title>
    <filename>a00104.html</filename>
    <subgroup>io_interface</subgroup>
    <subgroup>io_internals</subgroup>
    <file>io.c</file>
    <file>io.h</file>
  </compound>
  <compound kind="group">
    <name>io_interface</name>
    <title>The I/O component interface</title>
    <filename>a00105.html</filename>
    <subgroup>io_interface_state_utils</subgroup>
    <file>io.c</file>
    <file>io.h</file>
    <member kind="define">
      <type>#define</type>
      <name>STDIN_NAME</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>gae0732e637abf58589bfbad8823fb422b</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>LINE_START</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>gad390357798e1d9d9c582cbe70e4180db</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>LINE_END</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga46c15c2a9d93258b270562894d66d5d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>LINE_OFF</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga991b41fd6db087506af45b317519a7a3</anchor>
      <arglist>(addr)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>INSOURCE</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga7b3ac4b772aa24e0f98441bd6ed7b132</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>char *</type>
      <name>read_filename</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga3d1ea0280d75e95c19b76b7f46d8968e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>FILE *</type>
      <name>open_file</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>gaa2bc615b784d3e3894a483d6b725a2db</anchor>
      <arglist>(const char *file, const char *mode)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>open_io</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>gaba3d54a5ddc14acfdf04de86868c0e8d</anchor>
      <arglist>(char const *filename)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>close_io</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>gab629f275389e9eb212c80c72ee1b4a82</anchor>
      <arglist>(int error)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>close_input</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga2ef1b6de95c188bbc15917b2e2681391</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>get_line</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga00f55e76163f2f233285e348b6843f58</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>char *</type>
      <name>read_more</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga9f083b356cc442de86eb1c5ec1ba14e6</anchor>
      <arglist>(char const *readpos)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>input_opened</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga5fb0724ca136145f603b1375151a6348</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ensure_buf</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga795c5d5606be91a4d013f143e2238578</anchor>
      <arglist>(size_t extra)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>save_read_pos</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga98804534072f723cdbfcde4d38ebbdee</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char *</type>
      <name>saved_read_pos</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga1b67773cd3796e8c89e829c4dd2c1782</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>io_toplevel</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>ga82cfeb7895245a5632033f5be90e2cd7</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>read_offset</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>gac225e24fb83a5635a1fd813866f9993b</anchor>
      <arglist>(char const *readpos)</arglist>
    </member>
    <member kind="function">
      <type>char *</type>
      <name>read_pos</name>
      <anchorfile>a00105.html</anchorfile>
      <anchor>gaa1a20a3fed93ba1769f3f3f79f54910e</anchor>
      <arglist>(size_t readoff)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>io_interface_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00106.html</filename>
    <member kind="function">
      <type></type>
      <name>PUBLIC_STATE_DEF</name>
      <anchorfile>a00106.html</anchorfile>
      <anchor>gad8295b9bae5ff39a871d5aaf6435a391</anchor>
      <arglist>(io)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>io_internals</name>
    <title>The I/O component internals</title>
    <filename>a00107.html</filename>
    <subgroup>io_internals_state_utils</subgroup>
    <file>io.c</file>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>readon</name>
      <anchorfile>a00107.html</anchorfile>
      <anchor>ga822fe9f2772e2b5f4e9bef3dd710c41b</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>make_tempfile</name>
      <anchorfile>a00107.html</anchorfile>
      <anchor>gaf2c65ce3e6b36b3d2efa8e7e6d9ac62d</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>replace_infile</name>
      <anchorfile>a00107.html</anchorfile>
      <anchor>ga9ed5aaf863e38ceac7f36c7c8346c7da</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>make_backup_name</name>
      <anchorfile>a00107.html</anchorfile>
      <anchor>gabe957080d5da5b57183ba5e033c67a45</anchor>
      <arglist>(const char *filename)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>backup_infile</name>
      <anchorfile>a00107.html</anchorfile>
      <anchor>gad7f9d02c13d68e1518bc943156ff2477</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>delete_infile</name>
      <anchorfile>a00107.html</anchorfile>
      <anchor>gaad5bd8bb3745f4b15602c4821e95a226</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>open_output</name>
      <anchorfile>a00107.html</anchorfile>
      <anchor>gabebfaf537e5f5dd64f484e568f1dfbe0</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>io_internals_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00108.html</filename>
    <class kind="struct">io_state_s</class>
    <member kind="function">
      <type>void</type>
      <name>io_initor</name>
      <anchorfile>a00108.html</anchorfile>
      <anchor>gab6b7e32bae878464158880297750bd13</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>io_finitor</name>
      <anchorfile>a00108.html</anchorfile>
      <anchor>gae16b0caae91eb5a88c22afa9b47f7c48</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static io_state_t</type>
      <name>io_state</name>
      <anchorfile>a00108.html</anchorfile>
      <anchor>ga691272422340ff06e199562c2632ef7f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>io_state_t *</type>
      <name>io_h</name>
      <anchorfile>a00108.html</anchorfile>
      <anchor>ga85b7629249b9f4ceac3bbf8a27601739</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>io_public_state_t *</type>
      <name>io_public_h</name>
      <anchorfile>a00108.html</anchorfile>
      <anchor>gac1bae437961baa00b9a1bdd358d70475</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const io_state_t *const</type>
      <name>io_static_initialiser_h</name>
      <anchorfile>a00108.html</anchorfile>
      <anchor>ga1187fcd90a8b79cfa79680ba6c122a17</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>io_init_h</name>
      <anchorfile>a00108.html</anchorfile>
      <anchor>ga6391d2bffa96d9b2f8024ced7c0e0d79</anchor>
      <arglist>)(io_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>io_finis_h</name>
      <anchorfile>a00108.html</anchorfile>
      <anchor>ga320ccff5108d290f6c08b4ca286671d8</anchor>
      <arglist>)(io_state_t *)</arglist>
    </member>
    <member kind="typedef">
      <type>struct io_state_s</type>
      <name>io_state_t</name>
      <anchorfile>a00108.html</anchorfile>
      <anchor>gad3bd33a0ea983c690f3017ee48c95159</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>report_component</name>
    <title>The Report component</title>
    <filename>a00109.html</filename>
    <subgroup>report_interface</subgroup>
    <subgroup>report_internals</subgroup>
    <file>report.c</file>
    <file>report.h</file>
  </compound>
  <compound kind="group">
    <name>report_interface</name>
    <title>The Report component interface</title>
    <filename>a00110.html</filename>
    <subgroup>report_interface_state_utils</subgroup>
    <file>report.c</file>
    <file>report.h</file>
    <member kind="enumeration">
      <name>reason_code_t</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga1f47912ac2bb5db6784016a07f5baa10</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGCLASS_SHIFT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a908c07266ff0804e89c6b1b0ae0d6ff1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ISSUE_MASK</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a5c12bec3054946a371b735fbac2a885e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGCLASS_NONE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a8d17ab824f73c674d64ae0dd5ff7a68c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGCLASS_PROGRESS</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a0ea5b4e1c50ca0253f2796beb30d73f8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGCLASS_INFO</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a06bc57a3e3746c89aa15130bfcf2be95</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGCLASS_WARNING</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a5ce1baec495f156760743a5eb45c2583</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGCLASS_ERROR</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a41e70e8785be2e020be378ee05f6346e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGCLASS_ABEND</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a933e1c85dbd677e444a1b9f8692394a6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGCLASS_SUMMARY</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a620c28df8c15e9ccec19aa12b42c0427</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGCLASS_MASK</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10aa4355780718ebd747405fdd9f7a8875a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGSEVERITY_MASK</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ac7ef0c85553cef0e7c438cfb7f427997</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MSGEVENT_MASK</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a29003c371e8f48dc84196b28bdba7b61</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVENT_SUMMARY_MIN</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10af259bcc335c6567d6314fb8179ad628d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVENT_SUMMARY_DROPPED_LINES</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a8e5d8642576413fedfb8fea890b045d5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVENT_SUMMARY_CHANGED_LINES</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a726913a59a88f40a5b4bd8f6b94aca03</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVENT_SUMMARY_ERRORED_LINES</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10af79346bfd9f7cad6df43e0bbf3583913</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVENT_SUMMARY_ERROR_OUTPUT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10adf5e665fd2a6dbaf1366a1c8f5347380</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVENT_SUMMARY_MAX</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10af8df0bdf8f371b4783bc501915709eab</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVENT_SUMMARY_MASK</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10aa5c27940e38ef53bbb98ade08e150e35</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_SHIFT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10abe0c41d6657eb275acd38f2b5aa9b78a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_PROCESSING_FILE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a82550c5a00f0539986db22df982f494d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_ENTERING_DIR</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a7eb6e33a048cb402b0148da5e8eaf3ec</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_LEAVING_DIR</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a2b216ed6fc3945f811ee4b1c71dbfa1c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_BUILDING_TREE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10abc3cfd260041d20a992461e6199e637e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_SEARCHING_DIR</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10afdb388b40ed67dfa69d13012d0bf50ee</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_ADDED_FILE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ae248a3e668f3c9a32c055bd52c1d8b6b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_ADDED_DIR</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a03bda2eb7a688dc679fd819d7c15df4a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_FILE_TALLY</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a14171c9d3c39e7b27e0f18ca029989e0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_GOT_OPTIONS</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a4ac95f09b67f2579bae44fcde895cdfd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_SUMMARY_SHIFT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a8940646eaea49f0c2d9aea4c3f2255aa</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_SUMMARY_FILES_REACHED</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a8c498605ac309c2304c6a5a0e102acc7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PROGRESS_SUMMARY_FILES_DROPPED</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a4379680a52906c0beafa28e927e6dd2d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_SHIFT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ad481c518fc9e5f3f4a7eadbc2015398f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_DUPLICATE_MASK</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10aaaf89b57d60d6096d41166b49bc9e216</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_SYMLINK</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ac7a4398ea7306305b5f400ac1f6983bd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_STRAIGHTENED_LINE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ab5f74c675ca4daa685848a3cb59b44c7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_REDUNDANT_OPTION</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ab02de913f5734c0d55cdf86d2992ac6f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_DUPLICATE_ARGS</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a4aea54ca2d6e856f131c435a42a1a9ed</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_DELETED_CONTRADICTION</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a51ad2e4e8a1a2b1f0856bcab358146e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_COMMENTED_CONTRADICTION</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a6caac539f717481da84ac0cf73a16769</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_ERRORED_CONTRADICTION</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a4975cfc234c454d287df4247d4832960</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_DIFFERING_REDEF</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ae4513fb82bf1770ac84b0f2168dcb171</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_UNDEFING_DEFINED</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a28d72b5b59c414d8f8655e51c57ad246</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_UNCONDITIONAL_ERROR_INPUT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10aba43089170d42b58fc1ea6e44dc89fa5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_UNCONDITIONAL_ERROR_OUTPUT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ae00cadd6e1ab04c9e0ed547e4c28f624</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_GARBAGE_AFTER_DIRECTIVE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10aa588e31e656f580325cccf9685160335</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_MISSING_EOF_NEWLINE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a781df871e778ccb0c6ecb3623a252742</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_CIRCULAR_SYM_DEF</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a1e93de8a12fbedd5c71c13be6b9be54e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_VERBOSE_ONLY</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10aab431cd6c701d771d8388866107b8f7b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_ZERO_DIVIDE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ad4e0d91cbae230652d0dcb557b9cd943</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_DIR_IGNORED</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a44904e9295a80871d7107bec9a3017da</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_EMPTY_SYMBOL</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a29f4ff306518cb509ed70a16920ea5cb</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_UNKNOWN_DIRECTIVE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a09d882736922cbe54effd65e295fda42</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_INVALID_INCLUDE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10aa286db7c91e615b42b687f4a903eeff4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_STRAY_ESCAPE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ae203a49147f2b05738ec481b6346a51e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_FUNCTION_LIKE_MACRO_EXPANSION</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a8517038683d509e5d378b55daa7f9314</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_INT_OVERFLOW</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ab1f4cf166510f04bd87da179cb2946d8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_UNCLOSED_QUOTE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a7b03293e16c09f6bc83f056360184bf1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_NEGATIVE_SHIFT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ad2ac08c1d6270d0f90b7b07e5a3355a3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_FORCED_UNSIGNED</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ad15e3c466caf6da045207c1e8242f21c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_SIGN_CHANGED</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a3adee8adabf6ed68839fb161f398cac5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_SHIFT_OVERFLOW</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a7cced3652070d7e8fdf189b0b8294b36</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_CHAR_CONSTANT_TOO_LONG</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a28546dcf6afe4eddbb5a84feebe86947</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_MULITBYTE_CHAR_CONSTANT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ac09b072c1a15f2bc53479e907a84faae</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_TRANSIENT_SYMBOL_ADDED</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a66bda50faabdd2b68b37f82bfba52f11</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_INSOURCE_FUNCTION_LIKE_MACRO_DEFINITION</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a0f93b9f2ab10201d2a1cd9e6ea4232b0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_NO_SYMS</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a85bd819fcf9a60c9ce5531b24a0b9c65</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_ORPHAN_ELIF</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10aa1928f6421f7f64398a6e8c6259e7efc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_ORPHAN_ELSE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ad13c362b76ccb269816b187bc3b5d7fd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_ORPHAN_ENDIF</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a75e4b2c2fbb0a2f14585df250b1e08bc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_EOF_TOO_SOON</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a3c2d0ecdd00cff6cf6de5323180d1524</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_EOF_IN_COMMENT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10aee5b72c817aa723a3dcfa44cb962e6fc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_EOF_IN_QUOTE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a8e1d15a7c523dc76a4a5e697bd4b6bfe</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_NOTHING_TO_DO</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a945358c430994a324b24c1fb2942f9ff</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_ONE_FILE_ONLY</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a105d4faaadec0b2be2c71b146f8ea10b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_NEWLINE_IN_QUOTE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ad06c43d4b92b19c491f099143211c770</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_INVALID_ARGS</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10abb0ca5e9f36e507dd641c5cdfcaa8405</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_USAGE_ERROR</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10afe748516c5cfd3b00121d17b93e578a6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_TOO_DEEP</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a3584a1c6b5935f9f8b67176cf5c550f9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_MULTIPLE_ARGFILES</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ad5445c2b3cfdf84b92f67e9f2e0cf8d2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_GARBAGE_ARG</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a31e291ca5c2c8263254d7564cbd94d85</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_NOT_IDENTIFIER</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ae6ac7e945544e0c375ee5da23c7d47f2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_UNBALANCED_PAREN</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a8a09d02435b578a9e0ff09e239ffc660</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_GLOBAL_FUNCTION_LIKE_MACRO_DEFINITION</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10addce9c99b25ef7de90b2147841ecbbfc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_IF_WITHOUT_COND</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ac0d7994cda3ba012341cc557ab38422c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_CANT_OPEN_INPUT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ab830094b3a53aeb4f2cf25c5d4cce289</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_OUT_OF_MEMORY</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a612610c9be2e4f5ecbe3b894bf37f2b6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_FILENAME_TOO_LONG</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a752a7fd5c15c75901ce9026470adfc01</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_EOF_IN_FILENAME</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10addacde67fce07d78b91c548f27201f1a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_CONFUSED</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ab627d359fed55b1100bba7c70d2d4863</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_CANT_READ_INPUT</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10ab3505f713fd463fccbc1a87455fdbbd5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_CANT_WRITE_FILE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a9c8739fcc93b2468b41badb13010a330</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_NO_FILE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a88d9b73d834c5b9eaf353b9ff010613e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_ILLEGAL_FILENAME</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a8f3acd64e86b959f9b5349f333a9978d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_CANT_DELETE_FILE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a554d9c628a391608f02c56ae96776486</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_CANT_RENAME_FILE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a581ade1f909f0e48bcc3ce06e9d5da8a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_NO_TEMPFILE</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10addbf163886d1890d0c3d0b103a9bd52a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_CANT_OPEN_DIR</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a33d4619b81cb8dee76b0aae2f32f03c7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GRIPE_CANT_READ_DIR</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gga1f47912ac2bb5db6784016a07f5baa10a5d9cb7acd2d5c807ed4e89bf84f1f03f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>dbg_code_t</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gacc375ce3fb934c742ec2f03141f9ff6c</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_exit_flags</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gac840a1a1b1e53f6c7ace3b8108621f04</anchor>
      <arglist>(int bits, bool set)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_exit_flags</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga2470cb1c90979f514cd095e63d8152f1</anchor>
      <arglist>(int bits)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>exitcode</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gaa5997b4e7423635ef1059d34b6a84c32</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>line_len</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga41a73848f66cf646e879d19e759088fc</anchor>
      <arglist>(char const *str)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>flatten_line</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gacb0693fb8abfb41c2877559ac11d7e59</anchor>
      <arglist>(char *line)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>report</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gac4565af45d8998e9285f20fe9b58816e</anchor>
      <arglist>(reason_code_t reason, heap_str *buf, const char *format,...)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>parse_error</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gac2096fcc013d5a234b810aa60e26d80b</anchor>
      <arglist>(int reason, const char *format,...)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>give_up_confused</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga772d174dfc673c5d135611548db234c5</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>vbail</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gae6facc201f9b53fa278659eab369b6e6</anchor>
      <arglist>(int reason, const char *msg, va_list argp)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>bail</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga2d3f8efe9fe0bb4bed1fc0aaf946a259</anchor>
      <arglist>(int retcode, const char *format,...)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>debugging</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gae8e95ce5c8c243c69a9b3295971f742d</anchor>
      <arglist>(bool on)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>debug</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga1e4bbb597bef56b0175dba73931254ad</anchor>
      <arglist>(dbg_code_t how,...)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>exit_diagnostics</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gad8688ef86b0841005980934adc842f84</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>orphan_elif</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gad701ec384c4e018b40f3c72d2267e156</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>orphan_else</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gadbd394ac50e17a2fe8c4eb5bc1966518</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>orphan_endif</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gac92811186bf3afff06c712f2f5e1915a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>early_eof</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gaf054c3111e400ebb0e0ddea39a215ab1</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>processing_file</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gab6e612d29282402432fab7ec50c60f31</anchor>
      <arglist>(char const *filename)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>entering_dir</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gac388e3a1469b06a381361e90ebd9c6aa</anchor>
      <arglist>(char const *dirname)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>leaving_dir</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga65ded7c9bfeed1a03f7083cb6ef5e8d0</anchor>
      <arglist>(char const *dirname)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>format_output</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga7fdd6747e501bdb21f695de2a18a0a95</anchor>
      <arglist>(void *dest, int *buflen, int *startoff, char const *format,...)</arglist>
    </member>
    <member kind="function">
      <type>heap_str</type>
      <name>concatenate</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga8e3e53db5526d52a8f449eaa080e861a</anchor>
      <arglist>(size_t count, char *strs[], int punctch)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>report_symbol</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gac2ba59f3a79b7c3db4aefcb80ab99514</anchor>
      <arglist>(symbol_h sym)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>report_include</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga5e2b3a6f07d4f577588a0710c14721cd</anchor>
      <arglist>(hash_include_const_h inc_arg)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>report_directive</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>gaea0b5c3d2faaf2b618d5713b4479e791</anchor>
      <arglist>(canonical_string_const_h cl, directive_type_t directive_type)</arglist>
    </member>
    <member kind="function">
      <type>char *</type>
      <name>format_int</name>
      <anchorfile>a00110.html</anchorfile>
      <anchor>ga9e650602dcaf1e251f474beb31cbc02d</anchor>
      <arglist>(int_spec_t const *int_spec)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>report_internals</name>
    <title>The Report component internals</title>
    <filename>a00111.html</filename>
    <subgroup>report_internals_state_utils</subgroup>
    <file>report.c</file>
    <member kind="function" static="yes">
      <type>static char const *</type>
      <name>get_comment_type_name</name>
      <anchorfile>a00111.html</anchorfile>
      <anchor>ga964c5abb18e1a47d27719d4ba4b635de</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static char const *</type>
      <name>get_linestate_name</name>
      <anchorfile>a00111.html</anchorfile>
      <anchor>ga7ae27d0d7abd752a754b2dd36f9d6298</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static char const *</type>
      <name>if_state_name</name>
      <anchorfile>a00111.html</anchorfile>
      <anchor>gae9e7127651559315b49d14ba1feaeb77</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static char const *</type>
      <name>get_linetype_name</name>
      <anchorfile>a00111.html</anchorfile>
      <anchor>gad495981fe9a2ea2a3d1b15b8cacb0d96</anchor>
      <arglist>(line_type_t type)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static size_t</type>
      <name>vformat_output</name>
      <anchorfile>a00111.html</anchorfile>
      <anchor>ga834e8ab6630196d7c1b3c49870e24299</anchor>
      <arglist>(void *dest, int *buflen, int *startoff, char const *format, va_list argp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>vreport</name>
      <anchorfile>a00111.html</anchorfile>
      <anchor>gaaa036c69921a51e21195e001a3ca5f92</anchor>
      <arglist>(reason_code_t reason, heap_str *buf, const char *format, va_list argp)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static char const *const</type>
      <name>comment_name</name>
      <anchorfile>a00111.html</anchorfile>
      <anchor>ga4e837c3c9e17ba85d27ee179131bdaa2</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static char const *const</type>
      <name>linestate_name</name>
      <anchorfile>a00111.html</anchorfile>
      <anchor>ga155b2dfed8eae304125d454bfb935b8f</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static char const *const</type>
      <name>ifstate_name</name>
      <anchorfile>a00111.html</anchorfile>
      <anchor>ga6794bc21dbd861508079b20391eb3905</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static char const *const</type>
      <name>linetype_name</name>
      <anchorfile>a00111.html</anchorfile>
      <anchor>gaaf3d695e69f6bd5da91ec4538b350921</anchor>
      <arglist>[]</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>report_interface_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00112.html</filename>
    <member kind="function">
      <type>void</type>
      <name>report_initor</name>
      <anchorfile>a00112.html</anchorfile>
      <anchor>gac549826be4148b2ded7b166a6db7e5b4</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>report_finitor</name>
      <anchorfile>a00112.html</anchorfile>
      <anchor>ga1f0cba0af41b59ab35c14552d7134135</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>report_internals_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00113.html</filename>
    <class kind="struct">report_state_s</class>
    <member kind="typedef">
      <type>report_state_t</type>
      <name>report_public_state_t</name>
      <anchorfile>a00113.html</anchorfile>
      <anchor>gacf13d73dc29be8ba65d402ee7dca8bbb</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>report_initor</name>
      <anchorfile>a00113.html</anchorfile>
      <anchor>gac549826be4148b2ded7b166a6db7e5b4</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>report_finitor</name>
      <anchorfile>a00113.html</anchorfile>
      <anchor>ga1f0cba0af41b59ab35c14552d7134135</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static report_state_t</type>
      <name>report_state</name>
      <anchorfile>a00113.html</anchorfile>
      <anchor>ga4df1c1827d274b042c93125571add33e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>report_state_t *</type>
      <name>report_h</name>
      <anchorfile>a00113.html</anchorfile>
      <anchor>ga011a2cdd772388b661bf58cf6910be50</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>report_public_state_t *</type>
      <name>report_public_h</name>
      <anchorfile>a00113.html</anchorfile>
      <anchor>gaa26d45b63691a87d5009db4ae80995d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const report_state_t *const</type>
      <name>report_static_initialiser_h</name>
      <anchorfile>a00113.html</anchorfile>
      <anchor>gaf2dedcb5abfb1d2caaddbaff297e53b0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>report_init_h</name>
      <anchorfile>a00113.html</anchorfile>
      <anchor>ga01d665fe52045072e0a012eec0da003d</anchor>
      <arglist>)(report_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>report_finis_h</name>
      <anchorfile>a00113.html</anchorfile>
      <anchor>ga17550d4defdfcf2a2e101445216ca700</anchor>
      <arglist>)(report_state_t *)</arglist>
    </member>
    <member kind="typedef">
      <type>struct report_state_s</type>
      <name>report_state_t</name>
      <anchorfile>a00113.html</anchorfile>
      <anchor>ga1c7da1747b3f71da3918d960743dc959</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>utils</name>
    <title>Utility components</title>
    <filename>a00114.html</filename>
    <subgroup>ptr_vector_component</subgroup>
    <subgroup>ptr_set_component</subgroup>
    <subgroup>state_utils</subgroup>
    <subgroup>memory_component</subgroup>
    <subgroup>swiss_army_component</subgroup>
  </compound>
  <compound kind="group">
    <name>ptr_vector_component</name>
    <title>The Pointer-Vector component.</title>
    <filename>a00115.html</filename>
    <subgroup>ptr_vector_interface</subgroup>
    <subgroup>ptr_vector_internals</subgroup>
    <file>ptr_vector.c</file>
    <file>ptr_vector.h</file>
  </compound>
  <compound kind="group">
    <name>ptr_vector_interface</name>
    <title>The Pointer-Vector component interface</title>
    <filename>a00116.html</filename>
    <file>ptr_vector.c</file>
    <file>ptr_vector.h</file>
    <member kind="typedef">
      <type>ptrdiff_t</type>
      <name>locator_t</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gad5b1a7370a8542ff91b525a07569f457</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct ptr_vector *</type>
      <name>ptr_vector_h</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga53d3a6f8db9ee9f56207eb6baeac075f</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct ptr_vector const *</type>
      <name>ptr_vector_const_h</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gae5b5deeaa7b04ff1679ee26990ba1d51</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>dtor_t</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gac2ffca6359dbd3bb111f0969e01a8f38</anchor>
      <arglist>)(void *)</arglist>
    </member>
    <member kind="typedef">
      <type>void *(*</type>
      <name>cloner_t</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga40351b934b01de391c9e84efe896bde0</anchor>
      <arglist>)(void const *)</arglist>
    </member>
    <member kind="typedef">
      <type>int(*</type>
      <name>comparator_t</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga9dfbdc7048f1ac409cc1f236b5a78a32</anchor>
      <arglist>)(void const *obj, void const *key, locator_t keylen)</arglist>
    </member>
    <member kind="function">
      <type>ptr_vector_h</type>
      <name>ptr_vector_new</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gaddcab44a9bd8249fa3d6776848036a3e</anchor>
      <arglist>(dtor_t dtor, cloner_t cloner)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_vector_dispose</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gabf7634df2d816998ff8b776ceecb3164</anchor>
      <arglist>(ptr_vector_h pv)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_vector_drop</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga6260f534b7c4b245370e9621a5dea0a7</anchor>
      <arglist>(ptr_vector_h pv)</arglist>
    </member>
    <member kind="function">
      <type>ptr_vector_h</type>
      <name>ptr_vector_copy</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga5555ff02fccf8a9e7165107492f0133d</anchor>
      <arglist>(ptr_vector_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_vector_swap</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gad7e1b9b79a1262fd4071e98cba3ae7af</anchor>
      <arglist>(ptr_vector_h lhs, ptr_vector_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_vector_assign</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gaf4516c66eb73d976a13bc3970f9b86cf</anchor>
      <arglist>(ptr_vector_h dest, ptr_vector_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_vector_insert</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gae33c020334885d0d445bc69e0125c2dd</anchor>
      <arglist>(ptr_vector_h pv, size_t pos, void const *ptr)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>ptr_vector_delete</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga6f256ea4604188749be6dbb60c100ac2</anchor>
      <arglist>(ptr_vector_h pv, size_t pos)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>ptr_vector_equal</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga29e6c6c8d263ecd087d65096dd01e229</anchor>
      <arglist>(ptr_vector_const_h lhs, ptr_vector_const_h rhs, comparator_t compare)</arglist>
    </member>
    <member kind="function">
      <type>dtor_t</type>
      <name>ptr_vector_dtor</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga71b8be3b4d8cf0d937a953e46f10da51</anchor>
      <arglist>(ptr_vector_const_h pv)</arglist>
    </member>
    <member kind="function">
      <type>cloner_t</type>
      <name>ptr_vector_cloner</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gae30ca6762b568b25c5d366849b17f2e9</anchor>
      <arglist>(ptr_vector_const_h pv)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ptr_vector_append</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga8927192371a97fe4deb5b10165fd178b</anchor>
      <arglist>(ptr_vector_h pv, void *ptr)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>ptr_vector_count</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gaba5bbb2a1785da3460830a71f5044877</anchor>
      <arglist>(ptr_vector_const_h pv)</arglist>
    </member>
    <member kind="function">
      <type>void **</type>
      <name>ptr_vector_begin</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga65e9dcda2c159482b2196ef482dd9bca</anchor>
      <arglist>(ptr_vector_h pv)</arglist>
    </member>
    <member kind="function">
      <type>void const **</type>
      <name>ptr_vector_begin_const</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gaefd036b0226280d8b6e26e71de430e6c</anchor>
      <arglist>(ptr_vector_const_h pv)</arglist>
    </member>
    <member kind="function">
      <type>void **</type>
      <name>ptr_vector_end</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga908a09ceba72165271c6c3f58e456a16</anchor>
      <arglist>(ptr_vector_h pv)</arglist>
    </member>
    <member kind="function">
      <type>void const **</type>
      <name>ptr_vector_end_const</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga2a24a2c294f89873c2a811d3a4063f18</anchor>
      <arglist>(ptr_vector_const_h pv)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>ptr_vector_at</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gaa715d1d066946582bc9aa51b90be540b</anchor>
      <arglist>(ptr_vector_h pv, size_t pos)</arglist>
    </member>
    <member kind="function">
      <type>void const *</type>
      <name>ptr_vector_at_const</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>ga36f4a515238525758261813740e747e7</anchor>
      <arglist>(ptr_vector_const_h pv, size_t pos)</arglist>
    </member>
    <member kind="function">
      <type>locator_t</type>
      <name>ptr_vector_search</name>
      <anchorfile>a00116.html</anchorfile>
      <anchor>gaa7b2a4af0d8cbba756ccc43caf23462d</anchor>
      <arglist>(ptr_vector_const_h pv, void const *key, locator_t keylen, comparator_t compare, bool ordered)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>ptr_vector_internals</name>
    <title>The Pointer-Vector component internals</title>
    <filename>a00117.html</filename>
    <class kind="struct">ptr_vector</class>
    <file>ptr_vector.c</file>
    <member kind="function" static="yes">
      <type>static void *</type>
      <name>default_cloner</name>
      <anchorfile>a00117.html</anchorfile>
      <anchor>ga1432a1fb2bc845b99c837c18f0b6fd38</anchor>
      <arglist>(void const *src)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>ptr_vector_init</name>
      <anchorfile>a00117.html</anchorfile>
      <anchor>ga1bf962b44fad63f6e654a11b94b5d953</anchor>
      <arglist>(ptr_vector_h pv, dtor_t dtor, cloner_t cloner)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>ptr_vector_copy_init</name>
      <anchorfile>a00117.html</anchorfile>
      <anchor>gaefdaaf5f5331bc60144200e17a4b08a8</anchor>
      <arglist>(ptr_vector_h dest, ptr_vector_const_h src)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>ptr_vector_finis</name>
      <anchorfile>a00117.html</anchorfile>
      <anchor>ga35be27f36d91678858bf6d38aec3814b</anchor>
      <arglist>(ptr_vector_h pv)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>ptr_set_component</name>
    <title>The Pointer-Set component.</title>
    <filename>a00118.html</filename>
    <subgroup>ptr_set_interface</subgroup>
    <subgroup>ptr_set_internals</subgroup>
    <file>ptr_set.c</file>
    <file>ptr_set.h</file>
  </compound>
  <compound kind="group">
    <name>ptr_set_interface</name>
    <title>The Pointer-Set component interface.</title>
    <filename>a00119.html</filename>
    <file>ptr_set.c</file>
    <file>ptr_set.h</file>
  </compound>
  <compound kind="group">
    <name>ptr_set_internals</name>
    <title>The Pointer-Set component internals.</title>
    <filename>a00120.html</filename>
    <class kind="struct">ptr_set</class>
    <file>ptr_set.c</file>
    <member kind="define">
      <type>#define</type>
      <name>SOMEWHERE</name>
      <anchorfile>a00120.html</anchorfile>
      <anchor>gafffc4f9cbf9da88e900aa3cb6d38419a</anchor>
      <arglist>(loc)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>NOWHERE</name>
      <anchorfile>a00120.html</anchorfile>
      <anchor>ga710eecf1be57ca7bf458dc737d8809c9</anchor>
      <arglist>(loc)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>POINTER</name>
      <anchorfile>a00120.html</anchorfile>
      <anchor>ga9006b5e36b864140515dbe0442c64b7d</anchor>
      <arglist>(loc)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>default_comparator</name>
      <anchorfile>a00120.html</anchorfile>
      <anchor>gaf177e55835f1af7165eb1f5365c8c5bf</anchor>
      <arglist>(void const *obj, void const *key, locator_t ignore)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>ptr_set_init</name>
      <anchorfile>a00120.html</anchorfile>
      <anchor>ga4e66f79ec45ccdee9d8f8c4eb4163478</anchor>
      <arglist>(ptr_set_h ps, comparator_t compare, dtor_t dtor, cloner_t cloner)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>ptr_set_copy_init</name>
      <anchorfile>a00120.html</anchorfile>
      <anchor>ga8cec083c468b85ed25493f00c883aa2d</anchor>
      <arglist>(ptr_set_h dest, ptr_set_const_h src)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>state_utils</name>
    <title>The State Utilities component.</title>
    <filename>a00121.html</filename>
    <subgroup>state_utils_interface</subgroup>
  </compound>
  <compound kind="group">
    <name>state_utils_interface</name>
    <title>The State Utilities</title>
    <filename>a00122.html</filename>
    <subgroup>state_utils_user_macros</subgroup>
    <subgroup>state_utils_infrastructure</subgroup>
    <file>state_utils.h</file>
  </compound>
  <compound kind="group">
    <name>state_utils_user_macros</name>
    <title>State Utilities user</title>
    <filename>a00123.html</filename>
    <subgroup>state_utils_hdr_macros</subgroup>
    <subgroup>state_utils_impl_macros</subgroup>
  </compound>
  <compound kind="group">
    <name>state_utils_hdr_macros</name>
    <title>Macros for the component header</title>
    <filename>a00124.html</filename>
    <member kind="define">
      <type>#define</type>
      <name>PUBLIC_STATE_DEF</name>
      <anchorfile>a00124.html</anchorfile>
      <anchor>ga5853e4befe15a5635cd53dfdbb2c80c5</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PUBLIC_STATE_T</name>
      <anchorfile>a00124.html</anchorfile>
      <anchor>ga5616da648658a96640b9b49a0ea6dd42</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>NO_PUBLIC_STATE</name>
      <anchorfile>a00124.html</anchorfile>
      <anchor>ga53dfc957577cb8396fcacbfd7228970a</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IMPORT</name>
      <anchorfile>a00124.html</anchorfile>
      <anchor>gaaef2037cb1ca5eee2abbae229fa2fdc0</anchor>
      <arglist>(component)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>state_utils_impl_macros</name>
    <title>Macros for the component</title>
    <filename>a00125.html</filename>
    <member kind="define">
      <type>#define</type>
      <name>IMPLEMENT_STATIC</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>ga37125835cd0d1b5a1bfe07cdb20f8036</anchor>
      <arglist>(component, init_type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IMPLEMENT_DYNAMIC</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>gad83672127edf257d9c4c38c3b9732100</anchor>
      <arglist>(component, init_type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IMPLEMENT</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>ga713979eee38cc6a1d52434f7e7438af8</anchor>
      <arglist>(component, init_type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USE_STATIC_INITIALISER</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>gab9b0eba71b2372ccbed9b9e723a69cdd</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DEFINE_USER_INIT</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>ga3e7cc46107ba9b18a79c5b5d70d7e0e3</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DEFINE_USER_FINIS</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>gaa4789516ab4fa4f97d1d769388f212ef</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>INCLUDE_PUBLIC</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>ga46760241d1dad90208e996854f817293</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>STATE_DEF</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>gab2604307342e976ccb8e62ac14822506</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>STATE_T</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>ga9f3eca9f1731ba468a67251c03924cc4</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>NO_PRIVATE_STATE</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>ga5ce61c25d0585da4ceea6cc9785d2fe9</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>GET_STATE</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>ga74a4caf2b9990357e3797ecbe21b75d3</anchor>
      <arglist>(component, field)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_STATE</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>ga24b10a6cf1a4effe48db96a534960ba8</anchor>
      <arglist>(component, field)</arglist>
    </member>
    <member kind="enumeration">
      <name>component_storage_type</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>ga3a66b0ce3fafa3ab2e00bef4d5c6aad1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_STATIC</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>gga3a66b0ce3fafa3ab2e00bef4d5c6aad1a9537eb2ecf1784c80309cb58ddf7f01b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_DYNAMIC</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>gga3a66b0ce3fafa3ab2e00bef4d5c6aad1a27a86856327a306d56584d1fbe81cb2a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>component_initialisation_type</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>ga2576975acf6cc64ad22bed3cf4b8943e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ZERO_INITABLE</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>gga2576975acf6cc64ad22bed3cf4b8943ead02cd729559e58e246f22cf5c8a4f9f8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATIC_INITABLE</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>gga2576975acf6cc64ad22bed3cf4b8943ea8b7b60515620ae90cdb922168f222d57</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>USER_INITABLE</name>
      <anchorfile>a00125.html</anchorfile>
      <anchor>gga2576975acf6cc64ad22bed3cf4b8943ea796707110a905cb47c35066d44628dbc</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>state_utils_infrastructure</name>
    <title>State Utilities</title>
    <filename>a00126.html</filename>
    <file>state_utils.c</file>
    <file>state_utils.h</file>
    <member kind="function">
      <type>void</type>
      <name>component_initor</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga4b99b02ef94e4f34c6cdcf000212fe76</anchor>
      <arglist>(bool is_static, bool is_zero_initable, void **state, void **public_state, void const *initialiser, size_t size, void(*user_init)())</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>component_finitor</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga8e93afb8d678d29a118ed07515df43f1</anchor>
      <arglist>(bool is_static, void **state, void **public_state, void(*user_finis)())</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>STATE_ALLOCATOR</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gace0bb906bc86deb6fa345b953c62bbb6</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>STATE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga661775ff6ca411d3680d6ff321b311f6</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PUBLIC_STATE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga5861c57320b4f92fed80b14e0355bbe7</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>HANDLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gae4f216f1ef4de55f26212882ecd180dc</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PUBLIC_HANDLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga6fdd64dbee12c609f1728b5b9e2738e2</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USER_INIT</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga992afb0548c72ab8d7f94f1f57216909</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USER_FINIS</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gac621dd2d7ae9b4f6b734866e5b841ff2</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USER_INIT_HANDLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gac687e990b4cced650da9411a7dd46399</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USER_FINIS_HANDLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga0f0dbb45c0624bf6232d691d15c68663</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>INITOR</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga8cc31e925eed6fd1e60da6b9c5f67b69</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>FINITOR</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gaa78dc566cd11e7df6834143e36aa9c2b</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>STATIC_INITIALISER</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gaf16afe721493ea3309ab3cd90dcdd645</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>STATIC_INITIALISER_HANDLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga525ccbf46260e48ca875cb6e019feea9</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>STORAGE_TYPE_TAG</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga0c6b70561b45fd43691978fad5a67df6</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>INITIALISATION_TYPE_TAG</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga1062e687b02bb91a530f62947d77e617</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DECL_USER_INIT</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga278095a71b5aa11b1068a95a4bfc5b27</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DECL_USER_FINIS</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga932f87f0cae4ab8f8140d9ba624f8998</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DECL_USER_INIT_HANDLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gaf6dc846b6cc65b061e00de38d9e3d937</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DECL_USER_FINIS_HANDLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga53928e229e402a5c71960ffe5abcf7dd</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DECL_INITOR</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gabf292864d91044cf7585e41356163beb</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DECL_FINITOR</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga3e5ce9d538aced417376fdb4c193cd2a</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DECL_STATIC_INITIALISER</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga293f3c19415f1b86821c675f5e2a7393</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DECL_STATIC_INITIALISER_HANDLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga396e3a1c956e916df0a94b2f827addab</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SELECT_STATIC</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gacc0a7e12d04eec8442c36dc189fb5afe</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SELECT_DYNAMIC</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga6ad783530b586a9ec3500b77f1944804</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SELECT_INITIALISATION_TYPE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gaec464de907b8c272dec50b2c094e218e</anchor>
      <arglist>(component, init_type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SELECT_ZERO_INITABLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gafb243d023cc5bb48597c8c6e43544108</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SELECT_STATIC_INITABLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gac60daf04dc421e7c61fdfc6bb675a8b1</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SELECT_USER_INITABLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga7804bd64e9378c9c9e026cb721b97d5f</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IS_STATIC</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga17d2d5f0009fee4df579b8e07aba2291</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IS_ZERO_INITABLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gacf5c814dbb5451102f658e5627c61f56</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>HAS_STATIC_INITIALISER</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga9c9325cc5b16420cc668f87fb4d75895</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>HAS_USER_INIT</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga78067a2e3d3e8f35c28ca6b1359b6b77</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DECL_DYNAMIC_STATE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga2605787d754665578029856a1e30896a</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DECL_STATIC_STATE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gad40837c321ad95366c00086431cd8788</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IMPORT_INITOR</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gaf25915b1d2cdb096ccb90a192cfa91c1</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IMPORT_FINITOR</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga7ddc1842dc57656b898f5fd43701a4f6</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IMPORT_STATE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gadd89fe83a22718f366241d473df9131d</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>GET_STATE_BY_HANDLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga2433047f894ac9d203ed91f3271af572</anchor>
      <arglist>(component, field)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_STATE_BY_HANDLE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga52d667e6699bcd9e6b81a6ecaa4a9341</anchor>
      <arglist>(component, field)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>GET_STATIC_STATE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gac50bc0c54c28a7ac14d5e50fdbfe7d1e</anchor>
      <arglist>(component, field)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_STATIC_STATE</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga90e288181bb9b79e23cb199f43dc392b</anchor>
      <arglist>(component, field)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DEFINE_INITOR</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>gae02b194225759fa34abdb8f5a1b2b88e</anchor>
      <arglist>(component)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DEFINE_FINITOR</name>
      <anchorfile>a00126.html</anchorfile>
      <anchor>ga1dbb93a20e8d3da1bdb4272871c0388d</anchor>
      <arglist>(component)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>memory_component</name>
    <title>The Memory component.</title>
    <filename>a00127.html</filename>
    <subgroup>memory_interface</subgroup>
    <subgroup>memory_internals</subgroup>
    <file>memory.h</file>
  </compound>
  <compound kind="group">
    <name>memory_interface</name>
    <title>The Memory component interface.</title>
    <filename>a00128.html</filename>
    <file>memory.c</file>
    <file>memory.h</file>
    <member kind="typedef">
      <type>char *</type>
      <name>heap_str</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>gafce3a31f09c5736e6ba643bce5cbe9b5</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>char const *</type>
      <name>heap_str_const</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>ga4de9c668c07c500bf5c48af500e8cf97</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>allocate</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>ga521ac5a73fab458976fb4ecdcc2e1f28</anchor>
      <arglist>(size_t bytes)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>zallocate</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>ga96c81fa8b4628ce66c19a047c6f20ec2</anchor>
      <arglist>(size_t bytes)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>reallocate</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>ga7ddb7762200fe4803657fb8001731996</anchor>
      <arglist>(void *ptr, size_t bytes)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>callocate</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>gaa9a9b650a19b1b8a2028756cc8676c8c</anchor>
      <arglist>(size_t items, size_t size)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>release</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>gaec665bdee3bb238a658f500576597c06</anchor>
      <arglist>(void **pp)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>clone</name>
      <anchorfile>a00128.html</anchorfile>
      <anchor>ga7974661e860b452b6be72713be317a6d</anchor>
      <arglist>(void const *src, size_t len)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>memory_internals</name>
    <title>The Memory component internals.</title>
    <filename>a00129.html</filename>
    <file>memory.c</file>
    <member kind="function" static="yes">
      <type>static void *</type>
      <name>no_alloc_fail</name>
      <anchorfile>a00129.html</anchorfile>
      <anchor>ga093fa743e5341feb856b984c8ae31067</anchor>
      <arglist>(void *ptr)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>configured_symbols_component</name>
    <title>The Configured Symbols component.</title>
    <filename>a00130.html</filename>
    <subgroup>configured_symbols_interface</subgroup>
    <subgroup>configured_symbols_internals</subgroup>
    <file>configured_symbols.c</file>
    <file>configured_symbols.h</file>
  </compound>
  <compound kind="group">
    <name>configured_symbols_interface</name>
    <title>The Configured Symbols component interface</title>
    <filename>a00131.html</filename>
    <subgroup>configured_symbols_interface_state_utils</subgroup>
    <file>configured_symbols.c</file>
    <file>configured_symbols.h</file>
    <member kind="function">
      <type>symbol_h</type>
      <name>configured_symbol_seek</name>
      <anchorfile>a00131.html</anchorfile>
      <anchor>ga4d0475665a40c8cd0be2f2deee9f1989</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function">
      <type>symbol_const_h</type>
      <name>configured_symbol_seek_const</name>
      <anchorfile>a00131.html</anchorfile>
      <anchor>ga42a502fe67d8f9813761559235660113</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function">
      <type>symbol_h</type>
      <name>configured_symbol_match</name>
      <anchorfile>a00131.html</anchorfile>
      <anchor>ga54483c9a6b24ec44b912be15e79e8e8c</anchor>
      <arglist>(char const *symname, size_t len)</arglist>
    </member>
    <member kind="function">
      <type>symbol_const_h</type>
      <name>configured_symbol_match_const</name>
      <anchorfile>a00131.html</anchorfile>
      <anchor>ga869e732b269d31fe90f01a931f55bd1c</anchor>
      <arglist>(char const *symname, size_t len)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>configured_symbols_rewind</name>
      <anchorfile>a00131.html</anchorfile>
      <anchor>ga815157a805434d2d24ab70139e389455</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>symbol_h</type>
      <name>configured_symbol_find</name>
      <anchorfile>a00131.html</anchorfile>
      <anchor>gae4528112bfd9b7d551139348b56144e2</anchor>
      <arglist>(canonical_string_const_h cs, size_t *start)</arglist>
    </member>
    <member kind="function">
      <type>line_type_t</type>
      <name>configured_symbol_add</name>
      <anchorfile>a00131.html</anchorfile>
      <anchor>ga8e49b149613a8899e32431823d669b8c</anchor>
      <arglist>(bool define, symbol_h sym, char const *tail, char const **pend)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>configured_symbols_interface_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00132.html</filename>
    <class kind="struct">configured_symbols_public_state_s</class>
    <member kind="function">
      <type>void</type>
      <name>configured_symbols_initor</name>
      <anchorfile>a00132.html</anchorfile>
      <anchor>ga9084bee9ff55f3d1a7a672cc3aee8d9f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>configured_symbols_finitor</name>
      <anchorfile>a00132.html</anchorfile>
      <anchor>ga5a1bb380d9889ceee0533f2c890815fd</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>configured_symbols_public_state_t *</type>
      <name>configured_symbols_public_h</name>
      <anchorfile>a00132.html</anchorfile>
      <anchor>gaa113eb8f13ebed380f6a53b98e7ecf1d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct configured_symbols_public_state_s</type>
      <name>configured_symbols_public_state_t</name>
      <anchorfile>a00132.html</anchorfile>
      <anchor>ga5b3cce005a3cd32c9bea3b43e7f955ad</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>configured_symbols_internals</name>
    <title>The Configured Symbols component internals</title>
    <filename>a00133.html</filename>
    <subgroup>configured_symbols_internals_state_utils</subgroup>
    <file>configured_symbols.c</file>
  </compound>
  <compound kind="group">
    <name>configured_symbols_internals_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00134.html</filename>
    <member kind="function">
      <type>void</type>
      <name>configured_symbols_initor</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>ga9084bee9ff55f3d1a7a672cc3aee8d9f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>configured_symbols_finitor</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>ga5a1bb380d9889ceee0533f2c890815fd</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>configured_symbols_init</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>ga97aff1a7f2b0939ce10dadb565dfeb6b</anchor>
      <arglist>(configured_symbols_state_t *)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>configured_symbols_finis</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>ga77837362e0846a6fc35ba7c3a93683fe</anchor>
      <arglist>(configured_symbols_state_t *)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static configured_symbols_state_t</type>
      <name>configured_symbols_state</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>ga830f8d1de3d8b3fd67ac427afea442f4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>configured_symbols_state_t *</type>
      <name>configured_symbols_h</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>ga10c76e28d3a5f909c43e7028b20c6236</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>configured_symbols_public_state_t *</type>
      <name>configured_symbols_public_h</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>gaa113eb8f13ebed380f6a53b98e7ecf1d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const configured_symbols_state_t *const</type>
      <name>configured_symbols_static_initialiser_h</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>ga5eef01c7c54d0dce729c98a83356810c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>configured_symbols_init_h</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>gad6e4ebab72346043969f350d466e614a</anchor>
      <arglist>)(configured_symbols_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>configured_symbols_finis_h</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>ga4dbc74359a602363761a1b9c4caa0578</anchor>
      <arglist>)(configured_symbols_state_t *)</arglist>
    </member>
    <member kind="typedef">
      <type>configured_symbols_public_state_t</type>
      <name>configured_symbols_state_t</name>
      <anchorfile>a00134.html</anchorfile>
      <anchor>gab59f71b9bc23c378f4a72d9a0a910cab</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>unconfigured_symbols_component</name>
    <title>The Unconfigured Symbols component.</title>
    <filename>a00135.html</filename>
    <subgroup>unconfigured_symbols_interface</subgroup>
    <subgroup>unconfigured_symbols_internals</subgroup>
    <file>unconfigured_symbols.c</file>
  </compound>
  <compound kind="group">
    <name>unconfigured_symbols_interface</name>
    <title>The Unconfigured Symbols component interface</title>
    <filename>a00136.html</filename>
    <subgroup>unconfigured_symbols_interface_state_utils</subgroup>
    <file>unconfigured_symbols.c</file>
    <file>unconfigured_symbols.h</file>
    <file>unconfigured_symbols.h</file>
    <member kind="function">
      <type>void</type>
      <name>unconfigured_symbol_tally</name>
      <anchorfile>a00136.html</anchorfile>
      <anchor>ga803c23607b05cb7bd6839117a1d7de0b</anchor>
      <arglist>(char const *name, size_t len)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>unconfigured_symbols_interface_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00137.html</filename>
    <class kind="struct">unconfigured_symbols_public_state_s</class>
    <member kind="function">
      <type>void</type>
      <name>unconfigured_symbols_initor</name>
      <anchorfile>a00137.html</anchorfile>
      <anchor>ga83b6a380f97ab924304e572e7233da87</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unconfigured_symbols_finitor</name>
      <anchorfile>a00137.html</anchorfile>
      <anchor>ga47ec5582b7cb6732f0c920af8d76e295</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>unconfigured_symbols_public_state_t *</type>
      <name>unconfigured_symbols_public_h</name>
      <anchorfile>a00137.html</anchorfile>
      <anchor>ga3df5db6e6fbaf1cf021ebd71b88fb58d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct unconfigured_symbols_public_state_s</type>
      <name>unconfigured_symbols_public_state_t</name>
      <anchorfile>a00137.html</anchorfile>
      <anchor>ga75af76b62a5172645c2f03db96415530</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>unconfigured_symbols_internals</name>
    <title>The Unconfigured Symbols component internals</title>
    <filename>a00138.html</filename>
    <subgroup>unconfigured_symbols_internals_state_utils</subgroup>
  </compound>
  <compound kind="group">
    <name>unconfigured_symbols_internals_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00139.html</filename>
    <member kind="function">
      <type>void</type>
      <name>unconfigured_symbols_initor</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>ga83b6a380f97ab924304e572e7233da87</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unconfigured_symbols_finitor</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>ga47ec5582b7cb6732f0c920af8d76e295</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unconfigured_symbols_init</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>ga413c5596722daf89cefa1045164a0658</anchor>
      <arglist>(unconfigured_symbols_state_t *)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unconfigured_symbols_finis</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>ga14a46d4817b68ae52d7e7a964d09e646</anchor>
      <arglist>(unconfigured_symbols_state_t *)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static unconfigured_symbols_state_t</type>
      <name>unconfigured_symbols_state</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>ga2d1ca31523497d23f21ecd1f4f727977</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unconfigured_symbols_state_t *</type>
      <name>unconfigured_symbols_h</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>ga42e83d712522cc68363dd78ae2382bbf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unconfigured_symbols_public_state_t *</type>
      <name>unconfigured_symbols_public_h</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>ga3df5db6e6fbaf1cf021ebd71b88fb58d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unconfigured_symbols_state_t *const</type>
      <name>unconfigured_symbols_static_initialiser_h</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>gad6fd1b89257b97ff110c30713f4a3226</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>unconfigured_symbols_init_h</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>ga57f5d1ba3c53aa088a790d3a3765b108</anchor>
      <arglist>)(unconfigured_symbols_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>unconfigured_symbols_finis_h</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>ga1b1de7dd797e98427fbae4f6a4fd5919</anchor>
      <arglist>)(unconfigured_symbols_state_t *)</arglist>
    </member>
    <member kind="typedef">
      <type>unconfigured_symbols_public_state_t</type>
      <name>unconfigured_symbols_state_t</name>
      <anchorfile>a00139.html</anchorfile>
      <anchor>gac4290e61b59aaaf5665f8b14f4c852c3</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>args_component</name>
    <title>The Args component.</title>
    <filename>a00140.html</filename>
    <subgroup>args_interface</subgroup>
    <subgroup>args_internals</subgroup>
    <file>args.c</file>
    <file>args.h</file>
  </compound>
  <compound kind="group">
    <name>args_interface</name>
    <title>The Args component interface.</title>
    <filename>a00141.html</filename>
    <subgroup>args_interface_state_utils</subgroup>
    <file>args.c</file>
    <member kind="enumeration">
      <name>discard_policy_t</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>ga2390a004742a92d80e9db77676be1e23</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>DISCARD_DROP</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga2390a004742a92d80e9db77676be1e23a309e432c2e2fc57292ee51d4022c22d1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>DISCARD_BLANK</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga2390a004742a92d80e9db77676be1e23a6eb9dcb92aaecea2bb19593a305bdd42</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>DISCARD_COMMENT</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga2390a004742a92d80e9db77676be1e23a6f5ddf76c712946679eb4b0fab5b1ebe</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>command_codes</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>ga090ed41676221d74d1c36466fc107bae</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_HELP</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga090ed41676221d74d1c36466fc107baeac370f7a4093cca35301ea2e00b3c47a3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_VERSION</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga090ed41676221d74d1c36466fc107baea775afaef84c85d8173a20debb1a9e2ef</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_SOURCE</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga090ed41676221d74d1c36466fc107baea42a1153d8837d0810f20029281669947</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_SYMBOLS</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga090ed41676221d74d1c36466fc107baea20c5ea9ebdedf0b3dc977099df64ca9b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_INCLUDES</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga090ed41676221d74d1c36466fc107baea09d87dc627c4b1f5efa2ab5ab5687e02</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_DEFS</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga090ed41676221d74d1c36466fc107baeaa62a6f87ecb15f411c7931384478cbe7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_PRAGMAS</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga090ed41676221d74d1c36466fc107baeaa0c3c19f1013297f92dba8b18c123256</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_ERRORS</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga090ed41676221d74d1c36466fc107baead324a87657c7d445aa35cc2f22874055</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_DIRECTIVES</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga090ed41676221d74d1c36466fc107baeaef7814fc72acefefecd246edce9014ec</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>command_flags</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>ga6ebc153582ce8c2f3b903db1fa1a1dd6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_HELP_MASK</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga6ebc153582ce8c2f3b903db1fa1a1dd6abe4e4bd6a3ab5bf9b0e6726db6e0b990</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_VERSION_MASK</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga6ebc153582ce8c2f3b903db1fa1a1dd6aa8ee31be315765eefc5bd77f650acc1a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_SOURCE_MASK</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga6ebc153582ce8c2f3b903db1fa1a1dd6aad8b9637884eb908763af1428017718c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_SYMBOLS_MASK</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga6ebc153582ce8c2f3b903db1fa1a1dd6afcaf95e9d7b5bffd98aa9caa45a5bdfc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_INCLUDES_MASK</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga6ebc153582ce8c2f3b903db1fa1a1dd6a746d93f40d75ed196c8835c6437e405d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_DEFS_MASK</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga6ebc153582ce8c2f3b903db1fa1a1dd6a03dc4faef8b505f7929501465816815b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_PRAGMAS_MASK</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga6ebc153582ce8c2f3b903db1fa1a1dd6aab2c9e7e340813d23982622ed75d8b75</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_ERRORS_MASK</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga6ebc153582ce8c2f3b903db1fa1a1dd6a7529a07513fbe7f5bb04861324b5a381</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CMD_DIRECTIVES_MASK</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>gga6ebc153582ce8c2f3b903db1fa1a1dd6a4d17519d9578311eb4e901705f944cff</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>parse_executable</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>ga0ef13c8b30d859e97264a936b6a1bfc0</anchor>
      <arglist>(char **argv)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>parse_args</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>ga8ab77940e9f8f362c1242eb44f366bb7</anchor>
      <arglist>(int argc, char *argv[])</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>finish_args</name>
      <anchorfile>a00141.html</anchorfile>
      <anchor>ga06c440d2b0d406875a73e3c2f15c2338</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>args_interface_state_utils</name>
    <title>Macro-generated code.</title>
    <filename>a00142.html</filename>
    <class kind="struct">args_public_state_s</class>
    <member kind="typedef">
      <type>struct args_public_state_s</type>
      <name>args_public_state_t</name>
      <anchorfile>a00142.html</anchorfile>
      <anchor>ga6060ed69c009222585e5e1af61442a65</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>args_public_state_t *</type>
      <name>args_public_h</name>
      <anchorfile>a00142.html</anchorfile>
      <anchor>ga173e353487ef78ca2d9c6403f902d51f</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>args_initor</name>
      <anchorfile>a00142.html</anchorfile>
      <anchor>gad3dd343f52fa9244ca8dc419f0ce25d1</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>args_finitor</name>
      <anchorfile>a00142.html</anchorfile>
      <anchor>gaca0d021367f0f501af57e4535bafb2f2</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>args_internals</name>
    <title>The Args component internals.</title>
    <filename>a00143.html</filename>
    <subgroup>args_internals_state_utils</subgroup>
    <file>args.c</file>
    <member kind="define">
      <type>#define</type>
      <name>PROGRESS_GAGGED</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga28149db4e13b76b4369ce5041ff13d15</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VERSION</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga1c6d5de492ac61ad29aec7aa9a436bbf</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>option_codes</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga2aa0e9696a75f74ebb1cd928513c76ee</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_FILE</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea641661b1057912a690efd8389baad291</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_REPLACE</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeace7949adfc45a445f2522392f51a6aa8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_BACKUP</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea60ae80820a7a3d5b0f97008993accb55</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_DEF</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea31389668440c53f826e6f604ffac203b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_UNDEF</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeaea5250c42900a5e61d88cc54cea977ff</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_CONFLICT</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea9d8048cbfa8d30eed267c959e5ceee53</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_GAG</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeab41040bd06ec5d675899161407737232</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_VERBOSE</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea5549087f71cc2a3eb3a050bdb2e39502</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_COMPLEMENT</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea355084aeb3bd7219e2effde04605ae66</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_DEBUG</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeae18c66c85f5c325308846289886981d7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_EVALCONSTS</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea5794c46d926ff43825245de4823823d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_DISCARD</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea7372b02cafb1428c09623976c2b7ece6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_LINE</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeac9ad046cff66c675afb98479f89319a3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_POD</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeafded76089f3ad2e73ec65e1e713088db</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_RECURSE</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea3a750cdb55d01ae929c97318e31b6cec</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_FILTER</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeaf2cd6ed39bf42e06a2720d7db41b3832</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_KEEPGOING</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eead35d893ca47dfc432134bb07ef8e06ae</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_IFS</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeaa4a30da77419b4e2d5cf541c47baf825</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_DEFS</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeae3e042ef9821b5ec61dd0fbf57cb7368</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_UNDEFS</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeabd4d6f297a33f1d25e1d98215d934029</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_INCLUDES</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeaf9f4cc4fcea78e1d2d414ca6ec46506e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_LOCATE</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea73afdf226cda1d36072c46f53ead0a45</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_ONCE</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeaac4c0dbccd4c32d985fd10ca5ce9a6b5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_SYSTEM</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeaf664513e2e356c7fcec19786dc059aa8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_LOCAL</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea54967e7471b7f0c0f2e92bf1454a91ea</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_ACTIVE</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea33c3e9d5f9fffec25a3b73ce9905abca</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_INACTIVE</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea5b726fcf615889caa78dd8c4b66c04ef</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_EVALSYMS</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eea63ef03757a89ad77737255f2a576368d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OPT_IMPLICIT</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gga2aa0e9696a75f74ebb1cd928513c76eeacfd5aebcfe0ae115d8eb67259eb855a4</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>make_opts_list</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga8b08a7cc0034b68aa98f2ec74a91d3ba</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>usage</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gaad58003a07e0b8b5d78d4cf5a9e85dc2</anchor>
      <arglist>(FILE *fp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>usage_error_summary</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga316a6e50432cd7c11dc648a83097761a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>usage_error</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga502d9f9317dd01c68fc03b060024a827</anchor>
      <arglist>(int reason, const char *format,...)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>usage_help</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga9ae48f87b2809397ab30b97364998d27</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>version</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga4fbbbc8d035c85ce83c6f270a2e56012</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>config_diagnostics</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga7d005a671807d252c6c59fb809fdae27</anchor>
      <arglist>(const char *arg)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>finalise_diagnostics</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga3f72e2c9fd339ee10a07052e5860063b</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>error_invalid_opt</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gafe08552c146b2f9574bc35a34d562a47</anchor>
      <arglist>(cmd_option_t const *cmd, int bad_opt)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>add_files</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gaab190c3508d0df4b7aa4e9acb399003d</anchor>
      <arglist>(char const *path)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>parse_args_file</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gae0e232cf07e2753de26986544d4bed4a</anchor>
      <arglist>(const char *argsfile)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>parse_command_args</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga82856271849e2fb724c482f0c1aecb64</anchor>
      <arglist>(int argc, char *argv[])</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static struct option</type>
      <name>long_options</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gab5b68aa8f898c499ca2c3092ecd9e552</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static char</type>
      <name>opts</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gac0a0a054541c89472274a51cfeaf07d1</anchor>
      <arglist>[(sizeof(long_options)/sizeof(struct option))*3]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static struct cmd_option</type>
      <name>commands</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gadb9e3fb49a6d0b467a94de1ed24a2982</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static int const</type>
      <name>source_cmd_exclusions</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga2c86d7bc0205bf649be0945f02c68170</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static int const</type>
      <name>symbols_cmd_exclusions</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gafe114725b9a7cabdd769db8af718a282</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static int const</type>
      <name>includes_cmd_exclusions</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga5dc4ebd8db1d61d527b30de7f671591d</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static int const</type>
      <name>directives_cmd_exclusions</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga496e9e19becbadbae7e5517a12a33760</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static int const</type>
      <name>defs_cmd_exclusions</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gac4b9d0cbfb06c19a2583dc508fc0d1ec</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static int const</type>
      <name>pragmas_cmd_exclusions</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>ga23eeed61507653caf1085b5a08182f13</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static int const</type>
      <name>errors_cmd_exclusions</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gadc1b425b21144ec10c3227d44a21a46b</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static struct exclusion_list const</type>
      <name>cmd_exclusion_lists</name>
      <anchorfile>a00143.html</anchorfile>
      <anchor>gae8410277d69abdb3cd3f2d1d796a6fba</anchor>
      <arglist>[]</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>args_internals_state_utils</name>
    <title>Macro-generated code.</title>
    <filename>a00144.html</filename>
    <class kind="struct">args_state_s</class>
    <member kind="function">
      <type>void</type>
      <name>args_initor</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>gad3dd343f52fa9244ca8dc419f0ce25d1</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>args_finitor</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>gaca0d021367f0f501af57e4535bafb2f2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>args_init</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>ga85eac952274dbd2bf388c8f923a3ca2a</anchor>
      <arglist>(args_state_t *)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>args_finis</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>gaeea2a02e27e41a8c51cbc69712a57812</anchor>
      <arglist>(args_state_t *)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static args_state_t</type>
      <name>args_state</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>gab7d4e0a2aa362cfed78681b172a98813</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>args_state_t *</type>
      <name>args_h</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>ga8011f9f247065be8e1c0e926bd911cbf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>args_public_state_t *</type>
      <name>args_public_h</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>ga173e353487ef78ca2d9c6403f902d51f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const args_state_t *const</type>
      <name>args_static_initialiser_h</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>ga1e388ce19e6f768ef47bf935f12e0178</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>args_init_h</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>gae6032c0a51e190c82229cc7bf19a78ef</anchor>
      <arglist>)(args_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>args_finis_h</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>gaa973ed2c693ba06f08fa2e72e1026781</anchor>
      <arglist>)(args_state_t *)</arglist>
    </member>
    <member kind="typedef">
      <type>struct args_state_s</type>
      <name>args_state_t</name>
      <anchorfile>a00144.html</anchorfile>
      <anchor>ga0463fdb4bb40dd39878737bf29abf67d</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>chew_component</name>
    <title>The Chew component.</title>
    <filename>a00145.html</filename>
    <subgroup>chew_interface</subgroup>
    <subgroup>chew_internals</subgroup>
    <file>chew.c</file>
    <file>chew.h</file>
  </compound>
  <compound kind="group">
    <name>chew_interface</name>
    <title>The Chew component interface.</title>
    <filename>a00146.html</filename>
    <subgroup>chew_interface_state_utils</subgroup>
    <file>chew.c</file>
    <file>chew.h</file>
    <member kind="typedef">
      <type>enum comment_state</type>
      <name>comment_state_t</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>ga3f11ec41907ba0b7eaa3e97954d79082</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>comment_state</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>ga5a33cef52548bb44fa477479d10f4770</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NO_COMMENT</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gga5a33cef52548bb44fa477479d10f4770a0f603675384e00e001c308a14d25a9fb</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>C_COMMENT</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gga5a33cef52548bb44fa477479d10f4770ad6e27cd86e7b4b6afc686b25efe6b79e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CXX_COMMENT</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gga5a33cef52548bb44fa477479d10f4770aee0b21ee410aae2cf1620f5bc2346b83</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STARTING_COMMENT</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gga5a33cef52548bb44fa477479d10f4770ac275b6725664d99466fb91888472687e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FINISHING_COMMENT</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gga5a33cef52548bb44fa477479d10f4770a319acde8bf7bfc93557fd57f4659176c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PSEUDO_COMMENT</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gga5a33cef52548bb44fa477479d10f4770a6d9f51a3d3f214c247d3c8457d4c6d6b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>line_state_t</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>ga55f4253a9885dff9bf3ab4e3131b5e45</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LS_NEUTER</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gga55f4253a9885dff9bf3ab4e3131b5e45a26ccce4988d876d0309d99496736284c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LS_DIRECTIVE</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gga55f4253a9885dff9bf3ab4e3131b5e45a684657118991d59f00422f7c55a8cec2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LS_CODE</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gga55f4253a9885dff9bf3ab4e3131b5e45aa705d04959d5c2c912e9f93c26a61779</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>eol</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>ga86a573f92f136a3b224a457ff8d08afe</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>chew_on</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gaedb3c3bd20836fededa9ceb27cd8a4ea</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>chew_symbol</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gaa3a9b76cddc8841fbc51f7cd80f890ec</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>chew_continuation</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>ga5d6581d0984f9daa1437bcc78f8d1ffd</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>chew_macro_call</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>ga4904c11378260aaf7020abe2dd1a12dd</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>chew_header_name</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gaa9b698bd93ae3abbeea0f86b287f7521</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>chew_string</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>ga9cda05e29307e8a5639d9f5f921d3872</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>chew_unbroken_string</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>ga1d0b1664baf71f9671c6bc7ec790b1a0</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>chew_toplevel</name>
      <anchorfile>a00146.html</anchorfile>
      <anchor>gac56370087cd6b5ea9c728061c2283604</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>chew_interface_state_utils</name>
    <title>Macro-generated code.</title>
    <filename>a00147.html</filename>
    <class kind="struct">chew_public_state_s</class>
    <member kind="function">
      <type>void</type>
      <name>chew_initor</name>
      <anchorfile>a00147.html</anchorfile>
      <anchor>ga1540ca78979e4eec38a5ed77ca73bd0a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>chew_finitor</name>
      <anchorfile>a00147.html</anchorfile>
      <anchor>ga0fc99e891adbff1be6c5488cf6d18545</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>IMPORT_INITOR</name>
      <anchorfile>a00147.html</anchorfile>
      <anchor>gac6114b8664ba5629d3f8fcc4e08e0149</anchor>
      <arglist>(directives_tally)</arglist>
    </member>
    <member kind="variable">
      <type>chew_public_state_t *</type>
      <name>chew_public_h</name>
      <anchorfile>a00147.html</anchorfile>
      <anchor>ga60186a24ff463f0b40686b22267b2421</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct chew_public_state_s</type>
      <name>chew_public_state_t</name>
      <anchorfile>a00147.html</anchorfile>
      <anchor>ga0335c5ef505069ce62b743c6d3593960</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>chew_internals</name>
    <title>The Chew component internals.</title>
    <filename>a00148.html</filename>
    <subgroup>chew_internals_state_utils</subgroup>
    <file>chew.c</file>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>is_line_continuation</name>
      <anchorfile>a00148.html</anchorfile>
      <anchor>ga352da49f9fbc21f443b311c0477209d0</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>chew_internals_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00149.html</filename>
    <class kind="struct">chew_state_s</class>
    <member kind="function">
      <type>void</type>
      <name>chew_initor</name>
      <anchorfile>a00149.html</anchorfile>
      <anchor>ga1540ca78979e4eec38a5ed77ca73bd0a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>chew_finitor</name>
      <anchorfile>a00149.html</anchorfile>
      <anchor>ga0fc99e891adbff1be6c5488cf6d18545</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static chew_state_t</type>
      <name>chew_state</name>
      <anchorfile>a00149.html</anchorfile>
      <anchor>ga6ce3c7cea452af4b72705365cc9f3d4d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>chew_state_t *</type>
      <name>chew_h</name>
      <anchorfile>a00149.html</anchorfile>
      <anchor>gad4b38ebfcb43af293493689c1a5c22fd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>chew_public_state_t *</type>
      <name>chew_public_h</name>
      <anchorfile>a00149.html</anchorfile>
      <anchor>ga60186a24ff463f0b40686b22267b2421</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const chew_state_t *const</type>
      <name>chew_static_initialiser_h</name>
      <anchorfile>a00149.html</anchorfile>
      <anchor>ga647a42293699c735a93599231b7ec658</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>chew_init_h</name>
      <anchorfile>a00149.html</anchorfile>
      <anchor>gacfdf47ea899942751037b0a02e3ff5e7</anchor>
      <arglist>)(chew_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>chew_finis_h</name>
      <anchorfile>a00149.html</anchorfile>
      <anchor>gad793c468fbbc89005dd60890fb439ad4</anchor>
      <arglist>)(chew_state_t *)</arglist>
    </member>
    <member kind="typedef">
      <type>struct chew_state_s</type>
      <name>chew_state_t</name>
      <anchorfile>a00149.html</anchorfile>
      <anchor>gac12a9c7ece698b698886d74db28699eb</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>line_edit_component</name>
    <title>The Line Edit component</title>
    <filename>a00150.html</filename>
    <subgroup>line_edit_interface</subgroup>
    <subgroup>line_edit_internals</subgroup>
    <file>line_edit.c</file>
    <file>line_edit.h</file>
  </compound>
  <compound kind="group">
    <name>line_edit_interface</name>
    <title>The Line Edit component interface</title>
    <filename>a00151.html</filename>
    <subgroup>line_edit_interface_state_utils</subgroup>
    <file>line_edit.c</file>
    <file>line_edit.h</file>
    <member kind="define">
      <type>#define</type>
      <name>DELETEABLE_CHR</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>ga60406183f5b14daaab6c5a716f26147b</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DELETEABLE_LPAREN</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>ga0fc778ecc1b1807922db9a27748534f9</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DELETEABLE_RPAREN</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>gaee2809adeba27f1241e0f1dad4d0e8a3</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DELETEABLE</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>ga1466c031cea6c1e497b71ba9687615bd</anchor>
      <arglist>(ch)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>keywordedit</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>ga52ddd528b397a8f1c552ff099f0328f2</anchor>
      <arglist>(const char *replacement)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>delete_paren</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>ga8f597fa594b3ae8b9e8faea62ef63fbc</anchor>
      <arglist>(size_t lparen_off, size_t rparen_off)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>restore_paren</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>ga49d8081fc01971e2635855506913b46a</anchor>
      <arglist>(size_t lparen_off, size_t rparen_off)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>restore_all_paren</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>ga25874fd18f229e95592f313739b9a79b</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>cut_text</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>ga79d8de30b079869b280f128aa674b24e</anchor>
      <arglist>(char const *start, char const *end)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>truncate_line</name>
      <anchorfile>a00151.html</anchorfile>
      <anchor>gabcdf96091ffcd5a1bf3bc629c969a520</anchor>
      <arglist>(size_t off)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>line_edit_interface_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00152.html</filename>
    <class kind="struct">line_edit_public_state_s</class>
    <member kind="function">
      <type>void</type>
      <name>line_edit_initor</name>
      <anchorfile>a00152.html</anchorfile>
      <anchor>gae237cacc9ffbd8445d25fab4e8333953</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>line_edit_finitor</name>
      <anchorfile>a00152.html</anchorfile>
      <anchor>ga93169163ca2a0eacab048cc2282a44e2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>line_edit_public_state_t *</type>
      <name>line_edit_public_h</name>
      <anchorfile>a00152.html</anchorfile>
      <anchor>ga3b02f4a7bd6991ff15c735e2e6bf86d1</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct line_edit_public_state_s</type>
      <name>line_edit_public_state_t</name>
      <anchorfile>a00152.html</anchorfile>
      <anchor>ga4460ab1d11d3c4c51933816ce5cb73fe</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>line_edit_internals</name>
    <title>The Line Edit component internals</title>
    <filename>a00153.html</filename>
    <subgroup>line_edit_internals_state_utils</subgroup>
    <file>line_edit.c</file>
    <member kind="define">
      <type>#define</type>
      <name>DELETE_CHARS</name>
      <anchorfile>a00153.html</anchorfile>
      <anchor>ga36d6bf6e77f9dab19d17cad43745d380</anchor>
      <arglist>(start, end)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>tail_edit</name>
      <anchorfile>a00153.html</anchorfile>
      <anchor>ga34928f096a118e4de1c676085b1d1ee9</anchor>
      <arglist>(char *where, const char *what)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>line_edit_internals_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00154.html</filename>
    <member kind="function">
      <type>void</type>
      <name>line_edit_initor</name>
      <anchorfile>a00154.html</anchorfile>
      <anchor>gae237cacc9ffbd8445d25fab4e8333953</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>line_edit_finitor</name>
      <anchorfile>a00154.html</anchorfile>
      <anchor>ga93169163ca2a0eacab048cc2282a44e2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static line_edit_state_t</type>
      <name>line_edit_state</name>
      <anchorfile>a00154.html</anchorfile>
      <anchor>gad5f2054fca5bb81a2dc9ec66d34d8d0f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>line_edit_state_t *</type>
      <name>line_edit_h</name>
      <anchorfile>a00154.html</anchorfile>
      <anchor>ga147cce8e5b06a5e496d22993ddddd585</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>line_edit_public_state_t *</type>
      <name>line_edit_public_h</name>
      <anchorfile>a00154.html</anchorfile>
      <anchor>ga3b02f4a7bd6991ff15c735e2e6bf86d1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const line_edit_state_t *const</type>
      <name>line_edit_static_initialiser_h</name>
      <anchorfile>a00154.html</anchorfile>
      <anchor>ga7c27b75b0f7c2ed7ed827471967c7c83</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>line_edit_init_h</name>
      <anchorfile>a00154.html</anchorfile>
      <anchor>ga30c5cb2c52e2d4d2e1e24098c4d0ba98</anchor>
      <arglist>)(line_edit_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>line_edit_finis_h</name>
      <anchorfile>a00154.html</anchorfile>
      <anchor>gafaca0b34d1e8c532e4f0f8a21cf22bf9</anchor>
      <arglist>)(line_edit_state_t *)</arglist>
    </member>
    <member kind="typedef">
      <type>line_edit_public_state_t</type>
      <name>line_edit_state_t</name>
      <anchorfile>a00154.html</anchorfile>
      <anchor>ga5071c832a7cdf255b78b70580e7829d6</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>line_despatch_component</name>
    <title>The Line Despatch component</title>
    <filename>a00155.html</filename>
    <subgroup>line_despatch_interface</subgroup>
    <subgroup>line_despatch_internals</subgroup>
    <file>line_despatch.h</file>
  </compound>
  <compound kind="group">
    <name>line_despatch_interface</name>
    <title>The Line Despatch component interface</title>
    <filename>a00156.html</filename>
    <subgroup>line_despatch_interface_state_utils</subgroup>
    <file>line_despatch.c</file>
    <file>line_despatch.h</file>
    <member kind="function">
      <type>void</type>
      <name>print</name>
      <anchorfile>a00156.html</anchorfile>
      <anchor>ga7e8442e7139d840c15bdee83789f7ae8</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>drop</name>
      <anchorfile>a00156.html</anchorfile>
      <anchor>ga70b6ce664b7b4fdb33e25ad9d81873d6</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>substitute</name>
      <anchorfile>a00156.html</anchorfile>
      <anchor>gab5ec785ee5348893fe8af7ef8a17a997</anchor>
      <arglist>(const char *replacement)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>line_despatch_no_op</name>
      <anchorfile>a00156.html</anchorfile>
      <anchor>ga080a81af566e09aadf15f2416d796d3a</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>line_despatch_interface_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00157.html</filename>
    <class kind="struct">line_despatch_public_state_s</class>
    <member kind="function">
      <type>void</type>
      <name>line_despatch_initor</name>
      <anchorfile>a00157.html</anchorfile>
      <anchor>ga94f451a897a50bb996f3abaf38b5f451</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>line_despatch_finitor</name>
      <anchorfile>a00157.html</anchorfile>
      <anchor>gaa1909dd6ccf37a4624963f60b8a35a3f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>line_despatch_public_state_t *</type>
      <name>line_despatch_public_h</name>
      <anchorfile>a00157.html</anchorfile>
      <anchor>ga15185925f5552f3ed528d9ba4977a065</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct line_despatch_public_state_s</type>
      <name>line_despatch_public_state_t</name>
      <anchorfile>a00157.html</anchorfile>
      <anchor>gad1c8a4fdbb1b1e3d0d71550039aefd01</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>line_despatch_internals</name>
    <title>The Line Despatch component internals</title>
    <filename>a00158.html</filename>
    <subgroup>line_despatch_internals_state_utils</subgroup>
    <file>line_despatch.c</file>
    <member kind="define">
      <type>#define</type>
      <name>LINE_UNSIMPLIFIED</name>
      <anchorfile>a00158.html</anchorfile>
      <anchor>gaf7709d83450d4897a64ecce862fb4b69</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>printline_fast</name>
      <anchorfile>a00158.html</anchorfile>
      <anchor>gaa281f0784ec28979f293deef4f4aafaf</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>printline_cut</name>
      <anchorfile>a00158.html</anchorfile>
      <anchor>gaced7c6d1425774f52aceda85da01429d</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>printline_restore_all_paren</name>
      <anchorfile>a00158.html</anchorfile>
      <anchor>gade4a5af77e0ae67b3a859441de1d7b98</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>printline_slow</name>
      <anchorfile>a00158.html</anchorfile>
      <anchor>ga0e00fdb0e9c9b749ddf671a37a9b30ab</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>printline</name>
      <anchorfile>a00158.html</anchorfile>
      <anchor>ga97ae4f764d880b0d26f3a40e0e793aee</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>printline_commented_out</name>
      <anchorfile>a00158.html</anchorfile>
      <anchor>ga273de649aaec3a16c8696a8750a9e778</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>flushline_dummy</name>
      <anchorfile>a00158.html</anchorfile>
      <anchor>gacec469228d899dccdb7b35d9a01956aa</anchor>
      <arglist>(bool keep, const char *insert_text)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>flushline_live</name>
      <anchorfile>a00158.html</anchorfile>
      <anchor>ga217a21961b5bf8a4774197d65c140d63</anchor>
      <arglist>(bool keep, char const *insert_text)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>line_despatch_internals_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00159.html</filename>
    <class kind="struct">line_despatch_state_s</class>
    <member kind="function">
      <type>void</type>
      <name>line_despatch_initor</name>
      <anchorfile>a00159.html</anchorfile>
      <anchor>ga94f451a897a50bb996f3abaf38b5f451</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>line_despatch_finitor</name>
      <anchorfile>a00159.html</anchorfile>
      <anchor>gaa1909dd6ccf37a4624963f60b8a35a3f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static line_despatch_state_t</type>
      <name>line_despatch_state</name>
      <anchorfile>a00159.html</anchorfile>
      <anchor>ga26d64d3e68ced64771b26af1849b69f3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>line_despatch_state_t *</type>
      <name>line_despatch_h</name>
      <anchorfile>a00159.html</anchorfile>
      <anchor>ga93c88fe5eaf4f04d4ce1046b83880d1c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>line_despatch_public_state_t *</type>
      <name>line_despatch_public_h</name>
      <anchorfile>a00159.html</anchorfile>
      <anchor>ga15185925f5552f3ed528d9ba4977a065</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const line_despatch_state_t *const</type>
      <name>line_despatch_static_initialiser_h</name>
      <anchorfile>a00159.html</anchorfile>
      <anchor>ga8d3e3941d85b89636aa7933474fed182</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>line_despatch_init_h</name>
      <anchorfile>a00159.html</anchorfile>
      <anchor>ga74ff6ce4958d1549f51137cd6f8b3ae8</anchor>
      <arglist>)(line_despatch_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>line_despatch_finis_h</name>
      <anchorfile>a00159.html</anchorfile>
      <anchor>ga1b94b530bff8f971ab2bc039085a1f72</anchor>
      <arglist>)(line_despatch_state_t *)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const line_despatch_state_t</type>
      <name>line_despatch_static_initialiser</name>
      <anchorfile>a00159.html</anchorfile>
      <anchor>gaf174ebf73ee2299ae46f6af93e7c5404</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct line_despatch_state_s</type>
      <name>line_despatch_state_t</name>
      <anchorfile>a00159.html</anchorfile>
      <anchor>ga2d452caac161a3db224840f842800d97</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>if_control_component</name>
    <title>The Hash-If-Control component</title>
    <filename>a00160.html</filename>
    <subgroup>if_control_interface</subgroup>
    <subgroup>if_control_internals</subgroup>
    <file>if_control.c</file>
    <file>if_control.h</file>
  </compound>
  <compound kind="group">
    <name>if_control_interface</name>
    <title>The Hash-If-Control component interface</title>
    <filename>a00161.html</filename>
    <subgroup>if_control_interface_state_utils</subgroup>
    <file>if_control.c</file>
    <file>if_control.h</file>
    <member kind="enumeration">
      <name>if_state_t</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga966ab06d8043ad6eccc224b6e1a48cfb</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_OUTSIDE</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfbad918ba98c468eae0b4fed1afd0fb9de9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_FALSE_PREFIX</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfbaad3cf5e4005ddf678af9484e666303e8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_TRUE_PREFIX</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfba929e2b73471966e6e6698597da7e6757</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_PASS_MIDDLE</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfba5ae1065c0728c2aac31cd87a79d1e262</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_FALSE_MIDDLE</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfbac669e8c59945b7507a6cc0586c7e2786</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_TRUE_MIDDLE</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfbaa8e38e48e57a2e8072d5c7a6b18d9fa8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_PASS_ELSE</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfbacdde1573e97bcbed36407c10be915f52</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_FALSE_ELSE</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfbae8346582ff69dc7de186051d8af60995</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_TRUE_ELSE</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfba33e2b4d465ecdc260e2e1e6e24db295c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_FALSE_TRAILER</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfbad3a918eb61209478da87e6da31bcad30</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IF_STATE_COUNT</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gga966ab06d8043ad6eccc224b6e1a48cfba7e3b41acfdec723baf053efdb5f429dd</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>transition</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga1b85d8604598528474931d5a0cc15b05</anchor>
      <arglist>(line_type_t linetype)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>dead_line</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga92896d189e473f0a3c46ed73fde61b43</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>was_unconditional_line</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga94eb78320775891f969342a4595cd9b3</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_unconditional_line</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>gaa60de9d1a445fc84435997a4166f5337</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>if_start_line</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga113bb6a3c9c49189fc657faf3211f0bc</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>if_depth</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga419c9e08cb6455da20d8645ccf75a336</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>if_state_t</type>
      <name>if_state</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga9e62a8d5385b0a27e86c02a69e66490e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>if_control_toplevel</name>
      <anchorfile>a00161.html</anchorfile>
      <anchor>ga452e52b995fdecce3de0370b331bf01f</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>if_control_internals</name>
    <title>The Hash-If-Control component internals</title>
    <filename>a00162.html</filename>
    <subgroup>if_control_internals_state_utils</subgroup>
    <file>if_control.c</file>
    <member kind="define">
      <type>#define</type>
      <name>MAXDEPTH</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga0a852ddde438845110943cb3e2a0beea</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>void</type>
      <name>transition_t</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>gaaaee91505912956e4594a1372b1d0b35</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>done_file</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga80ff22e8f34b4a2bbf69f27ecfb019db</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>nest</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>gad2fe96b6b85ef29bc4d4c114cc8189c8</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>set_state</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga091be11ac59d7239e858c1654c6ad561</anchor>
      <arglist>(if_state_t is)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Strue</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga33404569dac4a1298bd092ea2a43c3d2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Sfalse</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>gabda3e5cb9733a5e049335332f9118ef5</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Selse</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga2aee74f9f9c3bed76c952ce6121aceed</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Pelif</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga6c1b4d367ebe97a62ea7312ab51dcb89</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Pelse</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga297074614fd7a4df578e5c99c2ed384c</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Pendif</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga0382d21c8aed375f6bfa52d224074489</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Dfalse</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga994d57c20598ed5bff783c35a8d86c96</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Delif</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>gaaef74818f33555adb96256ed4ad424b0</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Delse</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga2e60cf884d4fe491aeecd820a3455e0b</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Dendif</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga718d0f137e15935d4d61ee5ef8c872c1</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Fdrop</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga1f1b82a8b507a09c715b1ee070b44eb8</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Fpass</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga51ec8fdc2090dbdc6bbb7ad9a04bfe87</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Ftrue</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga38dc80dc501666e83b359b571cca5d4d</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Ffalse</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga21bfe9c45c6a16a8197b639eec6939dc</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Mpass</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga16ecc6b9a0b6a9dab35d08f0cad4a936</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Mtrue</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>gae20503334149b49a222032ce8a9d7868</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Melif</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga4297180321ea13ad3014353ab12b26d3</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>Melse</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga0f83b7382f9dd72ec7ead9aee2bc040e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static transition_t *const</type>
      <name>transition_table</name>
      <anchorfile>a00162.html</anchorfile>
      <anchor>ga0a5271e6859ae6a68a00f3e12dbc72ba</anchor>
      <arglist>[IF_STATE_COUNT][LT_SENTINEL]</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>if_control_internals_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00163.html</filename>
    <class kind="struct">if_control_state_s</class>
    <member kind="typedef">
      <type>if_control_state_t</type>
      <name>if_control_public_state_t</name>
      <anchorfile>a00163.html</anchorfile>
      <anchor>ga5fc0d1b463963d6292e27016102021e3</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>if_control_initor</name>
      <anchorfile>a00163.html</anchorfile>
      <anchor>gab14b550a2dc3ec4767566fd3b15a2fd1</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>if_control_finitor</name>
      <anchorfile>a00163.html</anchorfile>
      <anchor>ga3dfcb38a2c2b037b5a408f086be3f7ee</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static if_control_state_t</type>
      <name>if_control_state</name>
      <anchorfile>a00163.html</anchorfile>
      <anchor>ga4f9ae30c0a7ef1a45b0da68b10b1755d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>if_control_state_t *</type>
      <name>if_control_h</name>
      <anchorfile>a00163.html</anchorfile>
      <anchor>ga4bf48f6c393e3404c0a1065d62cc4204</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>if_control_public_state_t *</type>
      <name>if_control_public_h</name>
      <anchorfile>a00163.html</anchorfile>
      <anchor>ga861a37004fcd0966db6cb85d96701e39</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const if_control_state_t *const</type>
      <name>if_control_static_initialiser_h</name>
      <anchorfile>a00163.html</anchorfile>
      <anchor>ga3c87988e2a8f99b32229e24e37cc0bee</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>if_control_init_h</name>
      <anchorfile>a00163.html</anchorfile>
      <anchor>ga77cfb0da253f52ccde0ec58fdd7951b5</anchor>
      <arglist>)(if_control_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>if_control_finis_h</name>
      <anchorfile>a00163.html</anchorfile>
      <anchor>ga7de311f720fb28d2b2b7795d65711f65</anchor>
      <arglist>)(if_control_state_t *)</arglist>
    </member>
    <member kind="typedef">
      <type>struct if_control_state_s</type>
      <name>if_control_state_t</name>
      <anchorfile>a00163.html</anchorfile>
      <anchor>gad58f3ea91d9e5fa9cfe9f67662cf936d</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>if_control_interface_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00164.html</filename>
    <member kind="function">
      <type>void</type>
      <name>if_control_initor</name>
      <anchorfile>a00164.html</anchorfile>
      <anchor>gab14b550a2dc3ec4767566fd3b15a2fd1</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>if_control_finitor</name>
      <anchorfile>a00164.html</anchorfile>
      <anchor>ga3dfcb38a2c2b037b5a408f086be3f7ee</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>contradiction_component</name>
    <title>The Contradiction component</title>
    <filename>a00165.html</filename>
    <subgroup>contradiction_interface</subgroup>
    <subgroup>contradiction_internals</subgroup>
    <file>contradiction.h</file>
  </compound>
  <compound kind="group">
    <name>contradiction_interface</name>
    <title>The Contradiction component interface</title>
    <filename>a00166.html</filename>
    <subgroup>contradiction_interface_state_utils</subgroup>
    <file>contradiction.c</file>
    <file>contradiction.h</file>
    <member kind="typedef">
      <type>enum contradiction_policy</type>
      <name>contradiction_policy_t</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>ga5d6960ac3048d12daa5783843d3c5f20</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>contradiction_policy</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>ga79ecdc9ca26e968f915b6f277ffc6707</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CONTRADICTION_DELETE</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>gga79ecdc9ca26e968f915b6f277ffc6707a54eb933bd59c0ea4213076ae759801e9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CONTRADICTION_COMMENT</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>gga79ecdc9ca26e968f915b6f277ffc6707a611b712a959b615754503e274233a8e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CONTRADICTION_ERROR</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>gga79ecdc9ca26e968f915b6f277ffc6707a2330d641234867f18b0cdf544301c9a8</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>contradiction_policy</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>ga4f037d57833ddb1db273e6ed934d51bc</anchor>
      <arglist>(contradiction_policy_t pol)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>insert_contradiction</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>ga23f2a8d5a91d96e1b2e96b503789a768</anchor>
      <arglist>(char const *sub_format)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>forget_contradiction</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>ga4cb5d19a7cb3ad6dd5f2c071c194777b</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>flush_contradiction</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>gadaa07467468668b4b0bf07775286c4db</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>save_contradiction</name>
      <anchorfile>a00166.html</anchorfile>
      <anchor>ga1511a4f3a519e5f287e8cc5a196efed0</anchor>
      <arglist>(char const *sub_format)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>contradiction_interface_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00167.html</filename>
    <class kind="struct">contradiction_public_state_s</class>
    <member kind="typedef">
      <type>struct contradiction_public_state_s</type>
      <name>contradiction_public_state_t</name>
      <anchorfile>a00167.html</anchorfile>
      <anchor>gab24721c4d7f37caddd8b5e1ad8db8531</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>contradiction_public_state_t *</type>
      <name>contradiction_public_h</name>
      <anchorfile>a00167.html</anchorfile>
      <anchor>gab424c04f31d07971d5cb8788e95f1f89</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>contradiction_initor</name>
      <anchorfile>a00167.html</anchorfile>
      <anchor>ga5e898c602426eca0eb6b8f77d8cf1b0f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>contradiction_finitor</name>
      <anchorfile>a00167.html</anchorfile>
      <anchor>ga79426c2b41c18d7bb7ab01c22a78ff84</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>contradiction_internals</name>
    <title>The Contradiction component internals</title>
    <filename>a00168.html</filename>
    <subgroup>contradiction_internals_state_utils</subgroup>
    <file>contradiction.c</file>
    <member kind="define">
      <type>#define</type>
      <name>CONTRADICTION_PENDING</name>
      <anchorfile>a00168.html</anchorfile>
      <anchor>gaa517e3efe2b7c94adcb04d78c8ebde1a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ERR_MSG_BUF</name>
      <anchorfile>a00168.html</anchorfile>
      <anchor>gga06fc87d81c62e9abb8790b6e5713c55baca76ee1487890920dd9f0600d1c5596c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>OUT_MSG_BUF</name>
      <anchorfile>a00168.html</anchorfile>
      <anchor>gga06fc87d81c62e9abb8790b6e5713c55ba30370aa5922b2025a967d24c690796b0</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>compose_contradiction_insert_format</name>
      <anchorfile>a00168.html</anchorfile>
      <anchor>ga9acd7f867ee25813c9a03c5fe1942aab</anchor>
      <arglist>(heap_str *buf, const char *sub_format)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>forget_pending_contradiction</name>
      <anchorfile>a00168.html</anchorfile>
      <anchor>ga3026edd3f4582d50903ace5a182dde07</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>insert_pending_contradiction</name>
      <anchorfile>a00168.html</anchorfile>
      <anchor>ga05c63a379eb80132e80ba20d38510fa9</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>contradiction_internals_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00169.html</filename>
    <class kind="struct">contradiction_state_s</class>
    <member kind="function">
      <type>void</type>
      <name>contradiction_initor</name>
      <anchorfile>a00169.html</anchorfile>
      <anchor>ga5e898c602426eca0eb6b8f77d8cf1b0f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>contradiction_finitor</name>
      <anchorfile>a00169.html</anchorfile>
      <anchor>ga79426c2b41c18d7bb7ab01c22a78ff84</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static contradiction_state_t</type>
      <name>contradiction_state</name>
      <anchorfile>a00169.html</anchorfile>
      <anchor>ga669f441814677382a463d8f9016dc528</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>contradiction_state_t *</type>
      <name>contradiction_h</name>
      <anchorfile>a00169.html</anchorfile>
      <anchor>ga464c2167660e267ff5146e1b6471f345</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>contradiction_public_state_t *</type>
      <name>contradiction_public_h</name>
      <anchorfile>a00169.html</anchorfile>
      <anchor>gab424c04f31d07971d5cb8788e95f1f89</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const contradiction_state_t *const</type>
      <name>contradiction_static_initialiser_h</name>
      <anchorfile>a00169.html</anchorfile>
      <anchor>ga226a48e6010a6d652bc680e4b920782e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>contradiction_init_h</name>
      <anchorfile>a00169.html</anchorfile>
      <anchor>gaf57472e0b65c57f1ada9c4ed39b51a76</anchor>
      <arglist>)(contradiction_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>contradiction_finis_h</name>
      <anchorfile>a00169.html</anchorfile>
      <anchor>ga94f49aaa6038d4f637402e879822c993</anchor>
      <arglist>)(contradiction_state_t *)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const contradiction_state_t</type>
      <name>contradiction_static_initialiser</name>
      <anchorfile>a00169.html</anchorfile>
      <anchor>gadba6ede17acb152762d0065c54ff5332</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct contradiction_state_s</type>
      <name>contradiction_state_t</name>
      <anchorfile>a00169.html</anchorfile>
      <anchor>ga0e28e5480e670fafed7f473cc14469ea</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>evaluator_component</name>
    <title>The Evaluator component</title>
    <filename>a00170.html</filename>
    <subgroup>evaluator_interface</subgroup>
    <subgroup>evaluator_internals</subgroup>
    <file>evaluator.c</file>
    <file>evaluator.h</file>
  </compound>
  <compound kind="group">
    <name>evaluator_interface</name>
    <title>The Evaluator component interface</title>
    <filename>a00171.html</filename>
    <subgroup>evaluator_interface_state_utils</subgroup>
    <file>evaluator.c</file>
    <file>evaluator.h</file>
    <member kind="function">
      <type>line_type_t</type>
      <name>eval_line</name>
      <anchorfile>a00171.html</anchorfile>
      <anchor>ga3c17d26ddcb686cfb4a9dc1e5b62cee0</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>eval_result_t</type>
      <name>eval_definition_text</name>
      <anchorfile>a00171.html</anchorfile>
      <anchor>ga3d5477b216f1b6960d4f79a26d462898</anchor>
      <arglist>(char const **pdef)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>evaluator_internals</name>
    <title>The Evaluator component internals</title>
    <filename>a00172.html</filename>
    <class kind="struct">operation</class>
    <class kind="struct">co_precedent_ops</class>
    <subgroup>evaluator_internals_state_utils</subgroup>
    <file>evaluator.c</file>
    <member kind="typedef">
      <type>eval_result_t(</type>
      <name>evaluator_t</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga1915d93e692163f981cfac268c33b121</anchor>
      <arglist>)(struct co_precedent_ops const *ops, char const **, struct operation const **pbin_op)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>integer_binary_op</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga88ec5cd391cbf8a2ddf82b7136e81d16</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs, integer_bin_op_t op)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_lt</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga07542dca36a89eb15c15d9dcd103cc9d</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_gt</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga5d466502fa1077a82791e06f46b27670</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_le</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga0889ebc0d3ac3aa6757622b65ef31ab7</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_ge</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga60b8fcfeca56f2444637441fa5ee12eb</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_eq</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga8894ee0e4a7cf958b7ed3eb47637b4a5</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_ne</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga07666f9fb20f4160cfcaec8cf7d5a7f5</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_or</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga2606345f27281a6600b0179ca674b566</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_and</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>gaccebdc495117a4cc3e6e86f470c40207</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_bit_and</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga8cb0362dc666775dbba681a33e770724</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_bit_or</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>gac176bb2100e21f36c05081340825fee6</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_bit_xor</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga4871614610968e1b2141c38523707e13</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_lshift</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga504807125b2c3217ffd886602034434a</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_rshift</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga728520bae99e4862eea577882b55c651</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_add</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga1b62c8e3e39ec339f1367fcf70a2e061</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_subtract</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga402c49edf8c8c46b423b9a9d0e94320a</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_mult</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga48486987a2a08f8b30c0af506948ccd8</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_divide</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>gaba01d297f4c016d2e9217680fb869d4d</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>op_mod</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>gacde9cd0644a35b222ccba5af99559698</anchor>
      <arglist>(eval_result_t *lhs, eval_result_t *rhs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>eval_unary</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga6ac98022666328b3750ce13465a0c13b</anchor>
      <arglist>(struct co_precedent_ops const *ops, char const **cpp, struct operation const **ignored)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>eval_table</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga724625f96576003b3e76964c579b31e9</anchor>
      <arglist>(struct co_precedent_ops const *ops, char const **cpp, struct operation const **pbin_op)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static char const *</type>
      <name>short_circuit_and</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga9f68ec1b88b503185edc4a84ad22a468</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static char const *</type>
      <name>short_circuit_or</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>gae9895b8abdad886b35de6f970d09cd52</anchor>
      <arglist>(char const *cp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>eval_if</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>gab4282eef5a4f9f7df8f96944d7f8a884</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static line_type_t</type>
      <name>eval_hash_define</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>gaabb2474a294b4c8c16f000a659579cb7</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static line_type_t</type>
      <name>eval_hash_undef</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga998a30d03a02572fc1e92799d77d924e</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static eval_result_t</type>
      <name>eval_possible_symbol</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga184e95bce72bcc6c20bec7d129ca11b7</anchor>
      <arglist>(char const **cpp, directive_type_t context)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static line_type_t</type>
      <name>eval_hash_include</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>gaaba4c3bd9335aca39797526980be7dbd</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static char const *</type>
      <name>eval_free_form_directive</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>gaad0862583eede15f708ec1107601ea23</anchor>
      <arglist>(char const *cp, directive_type_t directive_type)</arglist>
    </member>
    <member kind="variable">
      <type>struct co_precedent_ops const *</type>
      <name>ops_tab</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>ga681e1e60116a1e43da2ee7e5eefdb472</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>struct co_precedent_ops</type>
      <name>eval_ops</name>
      <anchorfile>a00172.html</anchorfile>
      <anchor>gac2d4b5acc17805a232a29ebad2a2f7c6</anchor>
      <arglist>[]</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>evaluator_internals_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00173.html</filename>
    <class kind="struct">evaluator_state_s</class>
    <member kind="typedef">
      <type>evaluator_state_t</type>
      <name>evaluator_public_state_t</name>
      <anchorfile>a00173.html</anchorfile>
      <anchor>gae22f2a6becf0833ac0b4ca65277551b5</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>evaluator_initor</name>
      <anchorfile>a00173.html</anchorfile>
      <anchor>ga85ec8c764253a8ff7eb9a95359d4cfa8</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>evaluator_finitor</name>
      <anchorfile>a00173.html</anchorfile>
      <anchor>ga40e264f4d9de3541a85f31478ac2dbfa</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static evaluator_state_t</type>
      <name>evaluator_state</name>
      <anchorfile>a00173.html</anchorfile>
      <anchor>gaa42a0c090745b73c93dcbaa7491578e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>evaluator_state_t *</type>
      <name>evaluator_h</name>
      <anchorfile>a00173.html</anchorfile>
      <anchor>ga2583aa645fc323c7fa48c5cc530a95f0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>evaluator_public_state_t *</type>
      <name>evaluator_public_h</name>
      <anchorfile>a00173.html</anchorfile>
      <anchor>ga37912d6edf09f15a435eda4671d6463c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const evaluator_state_t *const</type>
      <name>evaluator_static_initialiser_h</name>
      <anchorfile>a00173.html</anchorfile>
      <anchor>gabfc5366e2f1db2662fd2e635fb68b4bb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>evaluator_init_h</name>
      <anchorfile>a00173.html</anchorfile>
      <anchor>ga7a725e21d2a39bde7e47f92f012cdb89</anchor>
      <arglist>)(evaluator_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>evaluator_finis_h</name>
      <anchorfile>a00173.html</anchorfile>
      <anchor>ga0d4ce8d3fd2b95cefacfab0ca5cd619a</anchor>
      <arglist>)(evaluator_state_t *)</arglist>
    </member>
    <member kind="typedef">
      <type>struct evaluator_state_s</type>
      <name>evaluator_state_t</name>
      <anchorfile>a00173.html</anchorfile>
      <anchor>ga2940d439a44fce05442b1bcd235abe77</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>evaluator_interface_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00174.html</filename>
    <member kind="function">
      <type>void</type>
      <name>evaluator_initor</name>
      <anchorfile>a00174.html</anchorfile>
      <anchor>ga85ec8c764253a8ff7eb9a95359d4cfa8</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>evaluator_finitor</name>
      <anchorfile>a00174.html</anchorfile>
      <anchor>ga40e264f4d9de3541a85f31478ac2dbfa</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>main_component</name>
    <title>The Main component</title>
    <filename>a00175.html</filename>
    <file>main.c</file>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>ready</name>
      <anchorfile>a00175.html</anchorfile>
      <anchor>gaea2ad4fea716c645e2c4c6b2ae55e1e9</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>process</name>
      <anchorfile>a00175.html</anchorfile>
      <anchor>ga6ef0387bd645347b1a61efc620315993</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>main</name>
      <anchorfile>a00175.html</anchorfile>
      <anchor>ga0ddf1224851353fc92bfbff6f499fa97</anchor>
      <arglist>(int argc, char *argv[])</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>line_debug</name>
      <anchorfile>a00175.html</anchorfile>
      <anchor>gaafaa288babfda32e4ef6d1c5662be75e</anchor>
      <arglist>(int line)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>node_proc</name>
      <anchorfile>a00175.html</anchorfile>
      <anchor>ga71954031340e22cbc89a19be1c48f3b8</anchor>
      <arglist>(file_tree_h ft, char const *name, file_tree_traverse_state_t context)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>exception_component</name>
    <title>The Exception component</title>
    <filename>a00176.html</filename>
    <file>exception.c</file>
    <file>exception.h</file>
    <member kind="define">
      <type>#define</type>
      <name>catch</name>
      <anchorfile>a00176.html</anchorfile>
      <anchor>gaeaa14416a877d44d04c6a9914066fc49</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>throw</name>
      <anchorfile>a00176.html</anchorfile>
      <anchor>gaf2adf08121e083b08bcb498d0b542a5e</anchor>
      <arglist>(x)</arglist>
    </member>
    <member kind="variable">
      <type>jmp_buf</type>
      <name>exception_context</name>
      <anchorfile>a00176.html</anchorfile>
      <anchor>ga707665cb58a94350e59c96a576ce5b48</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>exceptions_enabled</name>
      <anchorfile>a00176.html</anchorfile>
      <anchor>gab673995d8080d15c76328ab81d304e2f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>filesystem_component</name>
    <title>The Filesystem component.</title>
    <filename>a00177.html</filename>
    <subgroup>filesystem_interface</subgroup>
    <subgroup>filesystem_unix</subgroup>
    <subgroup>filesystem_windows</subgroup>
    <file>filesys.c</file>
    <file>filesys.h</file>
    <file>fs_nix.c</file>
    <file>fs_win.c</file>
  </compound>
  <compound kind="group">
    <name>filesystem_interface</name>
    <title>The Filesystem component interface.</title>
    <filename>a00178.html</filename>
    <file>filesys.h</file>
    <member kind="define">
      <type>#define</type>
      <name>fs_absolute_path</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga1f45ba8a780dee01a71494a305c5cf9a</anchor>
      <arglist>(pathtype)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>fs_unix_path</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga15d4c0690be81c46fbf958e1951e8509</anchor>
      <arglist>(pathtype)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>fs_windows_path</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gaedd4da4fe5b4a35d958b24921248601f</anchor>
      <arglist>(pathtype)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>fs_dangling_path</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gae2041e52bfc997c967bd7e4651dd0415</anchor>
      <arglist>(pathtype)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>fs_root_path</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga7dd02fe2bb9d05bd501bd905a095c0ba</anchor>
      <arglist>(pathtype)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>FS_IS_FILE</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gaf3e55d8a31e277ff3e9707d4927427c8</anchor>
      <arglist>(objtype)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>FS_IS_DIR</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga93d31beabf1989ec24db78c77948c7b1</anchor>
      <arglist>(objtype)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>FS_IS_SLINK</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga67c44c5484237991be1a9105ba108723</anchor>
      <arglist>(objtype)</arglist>
    </member>
    <member kind="typedef">
      <type>void *</type>
      <name>fs_dir_t</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga6d482078e0987fdb2bdf2825873d52f3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>fs_obj_type_t</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga3b9f4639eeb712c5271cfee671ff0ef7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FS_OBJ_NONE</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gga3b9f4639eeb712c5271cfee671ff0ef7ac23779627c0e5793a06a8d3ab490d4b2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FS_OBJ_SLINK</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gga3b9f4639eeb712c5271cfee671ff0ef7ae19f1bfc269cb5fd12e7107d1be0f2d2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FS_OBJ_FILE</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gga3b9f4639eeb712c5271cfee671ff0ef7a6560439d14c3d4610cbcb07c3ffd369b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FS_OBJ_DIR</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gga3b9f4639eeb712c5271cfee671ff0ef7a1175314458e2d6d2dbc95b48e3fa2412</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>fs_path_type_t</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gabb4fb314bdef635e01cb17e9ab875a98</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FS_ABS_PATH</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ggabb4fb314bdef635e01cb17e9ab875a98a2e46a4fd936e85f055227ee13fbb8c2d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FS_UNIX_PATH</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ggabb4fb314bdef635e01cb17e9ab875a98abd82bfccf13eaec18bfac53ef94b63d5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FS_WIN_PATH</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ggabb4fb314bdef635e01cb17e9ab875a98a97c702537df6fb737222e8cc6183d09b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FS_DANGLING_PATH</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ggabb4fb314bdef635e01cb17e9ab875a98a0888de3d3f43a36486cb5f671e0d9e0a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FS_ROOT_PATH</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ggabb4fb314bdef635e01cb17e9ab875a98a199d7f029ee25d3fe047931b121dc2e1</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>fs_obj_type_t</type>
      <name>fs_obj_type</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga53d4bbf792ddaed90f8413a5956d8239</anchor>
      <arglist>(char const *name)</arglist>
    </member>
    <member kind="function">
      <type>fs_obj_type_t</type>
      <name>fs_file_or_dir</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga8983e088a70c870190a096528fa4531d</anchor>
      <arglist>(char const *name)</arglist>
    </member>
    <member kind="function">
      <type>fs_dir_t</type>
      <name>fs_open_dir</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gaa88dd1c23bfc5043ad343c5b3fb6d6bc</anchor>
      <arglist>(char const *dirname, fs_dir_t const parent)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>fs_close_dir</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga5bf17384e2fd93fd5970504620c64b32</anchor>
      <arglist>(fs_dir_t dir)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>fs_read_dir</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gab23a2d32c04395cfed634e4e79f9ff9b</anchor>
      <arglist>(fs_dir_t dir, char const **fullname)</arglist>
    </member>
    <member kind="function">
      <type>fs_dir_t</type>
      <name>fs_get_parent</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga2ce9270a3e9b1dda53913f326fdb5e34</anchor>
      <arglist>(fs_dir_t dir)</arglist>
    </member>
    <member kind="function">
      <type>heap_str</type>
      <name>fs_compose_filename</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga95bd46ca33c9a56c8d6c325be30b869c</anchor>
      <arglist>(char const *path, char const *leafname)</arglist>
    </member>
    <member kind="function">
      <type>heap_str</type>
      <name>fs_split_filename</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga87952f6ae695ee494eaba18010ca67c7</anchor>
      <arglist>(char const *path, char **leafname)</arglist>
    </member>
    <member kind="function">
      <type>heap_str</type>
      <name>fs_real_path</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga892e9c9a60ed46c9391eab2e3ef900c9</anchor>
      <arglist>(char const *relname, size_t *namelen)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>fs_cur_dir_entry</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gaecc8b6d2c8c74d904412eddda7c4d396</anchor>
      <arglist>(fs_dir_t dir, char const **entry)</arglist>
    </member>
    <member kind="function">
      <type>fs_path_type_t</type>
      <name>fs_path_type</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gacbd04662f04d93e5b5028b77ff8c42db</anchor>
      <arglist>(char const *filename)</arglist>
    </member>
    <member kind="function">
      <type>char *</type>
      <name>fs_tempname</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>ga0ac078f54030a31d013b42ec82f157f0</anchor>
      <arglist>(char *template)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>fs_path_comp</name>
      <anchorfile>a00178.html</anchorfile>
      <anchor>gaf9d2d46706e7d7856647d25803c4290e</anchor>
      <arglist>(char const *first, char const *second, size_t *sharedlen)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>filesystem_unix</name>
    <title>The Filesystem component for Unix.</title>
    <filename>a00179.html</filename>
    <subgroup>filesystem_unix_internals</subgroup>
    <file>fs_nix.c</file>
  </compound>
  <compound kind="group">
    <name>filesystem_unix_internals</name>
    <title>The Unix Filesystem component internals.</title>
    <filename>a00180.html</filename>
    <class kind="struct">fs_dir_nix</class>
    <file>fs_nix.c</file>
    <member kind="typedef">
      <type>struct fs_dir_nix</type>
      <name>fs_dir_nix_t</name>
      <anchorfile>a00180.html</anchorfile>
      <anchor>ga23c72f91e55c54cac7f4dd261a44740f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>filesystem_windows</name>
    <title>The Filesystem component for Windows.</title>
    <filename>a00181.html</filename>
    <subgroup>filesystem_windows_internals</subgroup>
    <file>fs_win.c</file>
  </compound>
  <compound kind="group">
    <name>filesystem_windows_internals</name>
    <title>The Windows Filesystem component</title>
    <filename>a00182.html</filename>
    <class kind="struct">fs_dir_win</class>
    <file>fs_win.c</file>
    <member kind="typedef">
      <type>struct fs_dir_win</type>
      <name>fs_dir_win_t</name>
      <anchorfile>a00182.html</anchorfile>
      <anchor>gaecf61ab260ebb54a61a58edc5f0be5ca</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>file_tree_component</name>
    <title>The File Tree component.</title>
    <filename>a00183.html</filename>
    <subgroup>file_tree_interface</subgroup>
    <subgroup>file_tree_internals</subgroup>
    <file>file_tree.c</file>
    <file>file_tree.h</file>
  </compound>
  <compound kind="group">
    <name>file_tree_interface</name>
    <title>The File Tree component interface.</title>
    <filename>a00184.html</filename>
    <class kind="struct">file_tree_count_t</class>
    <file>file_tree.c</file>
    <file>file_tree.h</file>
    <member kind="define">
      <type>#define</type>
      <name>FT_LAST</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gae963a78af68fa871621745eb36862c95</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct file_tree *</type>
      <name>file_tree_h</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gac38541339071b6f91f10a2fc783d1daa</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct file_tree const *</type>
      <name>file_tree_const_h</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gaa476cec023c213896b7c2568e92a51e7</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>file_tree_callback_t</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga399636b12caba6ca3f1a4d4dec5120dc</anchor>
      <arglist>)(file_tree_h ft, char const *name, file_tree_traverse_state_t context)</arglist>
    </member>
    <member kind="typedef">
      <type>bool(*</type>
      <name>file_filter_t</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga227049e4269a073f508d9ba445c78a3d</anchor>
      <arglist>)(char const *leafname)</arglist>
    </member>
    <member kind="enumeration">
      <name>file_tree_traverse_state_t</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga79618feefef9463cfe21ecc5a4af10f4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FT_ENTERING_DIR</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gga79618feefef9463cfe21ecc5a4af10f4a03fc722c85a31c8d32319867c0600e95</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FT_AT_FILE</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gga79618feefef9463cfe21ecc5a4af10f4a9a931614ab79e00d8b148564c98fbe2e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FT_LEAVING_DIR</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gga79618feefef9463cfe21ecc5a4af10f4a85dea30b6c6da742504fbb415b7a02f2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>file_tree_count_flags</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga02aea05b612eca3c19ad33ec7ad0980c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FT_COUNT_FILES</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gga02aea05b612eca3c19ad33ec7ad0980ca207b741c674476efc320a8fbbb521f7a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FT_COUNT_DIRS</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gga02aea05b612eca3c19ad33ec7ad0980ca230531f826f10ce9a8b81996a65bf63a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FT_COUNT_ALL</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gga02aea05b612eca3c19ad33ec7ad0980ca8658e75b2c8a4e71784f55e4e99b6658</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FT_COUNT_CHILDREN</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gga02aea05b612eca3c19ad33ec7ad0980ca5e8210d63f824091a146b661e2afee6b</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>heap_str</type>
      <name>file_tree_name</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gab834d35a79f045afed7b0a11ab04f9af</anchor>
      <arglist>(const file_tree_const_h ft)</arglist>
    </member>
    <member kind="function">
      <type>file_tree_h</type>
      <name>file_tree_new</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gac22fcc3bdc8015420174ebf6191bb36e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>file_tree_h</type>
      <name>file_tree_copy</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gad04c1b727806094aec292879efe57400</anchor>
      <arglist>(file_tree_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>file_tree_swap</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gab1f17cfc0ef283319b744ae24e68d1e7</anchor>
      <arglist>(file_tree_h lhs, file_tree_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>file_tree_assign</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga68560853294d39d6e1aa257ad0a83a3a</anchor>
      <arglist>(file_tree_h dest, file_tree_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>file_tree_equal</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gada05edd4cb68fbfdfeca0516a7eb778f</anchor>
      <arglist>(file_tree_const_h lhs, file_tree_const_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>file_tree_set_filter</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga441caf35bf350fedb670cb49af87d891</anchor>
      <arglist>(file_tree_h ft, file_filter_t filter)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>file_tree_add</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga963f713882376e0f4eb7ecb5bd71daf3</anchor>
      <arglist>(file_tree_h parent, char const *path, file_tree_callback_t callback)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>file_tree_dispose</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga1b334b8bec8131f9309a657a86b0070d</anchor>
      <arglist>(file_tree_h ft)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>file_tree_traverse</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>ga2e02f92a97aa9cf6bc0fefe7fc3179cc</anchor>
      <arglist>(file_tree_h ft, file_tree_callback_t callback)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>file_tree_is_empty</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gafa89fdd467673d4c6ae8ed14f6c46b20</anchor>
      <arglist>(file_tree_const_h ft)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>file_tree_count</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gabba69705103f1d8e7fcf027f342a0678</anchor>
      <arglist>(file_tree_const_h ft, unsigned flags, file_tree_count_t *counter)</arglist>
    </member>
    <member kind="function">
      <type>file_tree_const_h</type>
      <name>file_tree_child</name>
      <anchorfile>a00184.html</anchorfile>
      <anchor>gaec2ade10f6f7a8cc1d0ca0d8869ff8c4</anchor>
      <arglist>(file_tree_const_h ft, size_t which)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>file_tree_internals</name>
    <title>The File Tree component internals.</title>
    <filename>a00185.html</filename>
    <class kind="struct">file_tree</class>
    <file>file_tree.c</file>
    <member kind="define">
      <type>#define</type>
      <name>PARENT_PENDING</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga100e3ae9305cc3b886af4a795c3928cf</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IS_UNLINKED</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga50efc3528b4b0c63175ba38110b62de7</anchor>
      <arglist>(ftree)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IS_ROOT</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gab5fb2d51968e831627a68553e417a641</anchor>
      <arglist>(ftree)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IS_FILE</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gac69b149ab8040398278747bfcdc81130</anchor>
      <arglist>(ftree)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IS_DIR</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gacd1d43511ad2cd3baa3d482d78f8388b</anchor>
      <arglist>(ftree)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>COUNT_FILES</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga219d2a4a679738298aaf950bb410d283</anchor>
      <arglist>(flags)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>COUNT_FILES_ONLY</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga046583dc71b39708f2ba70a2f651b9b5</anchor>
      <arglist>(flags)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>COUNT_DIRS</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gaad8516e19126b1bea7c0d7748a33ea3e</anchor>
      <arglist>(flags)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>COUNT_DIRS_ONLY</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gacd1677ef643ef30d403eab438cb7cd4b</anchor>
      <arglist>(flags)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>COUNT_ALL</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gaa48ad45cc09d219fe4406cd94e0e03ce</anchor>
      <arglist>(flags)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>COUNT_CHILDREN</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga293e7bb8f8d626e360f7ced54afd7827</anchor>
      <arglist>(flags)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>null_filter</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gafc691fb3761f644f0471ddbd4f3074c4</anchor>
      <arglist>(char const *leafname)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>null_callback</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga74be7f508352be12405cfc30b1b38cca</anchor>
      <arglist>(file_tree_h ft, char const *name, file_tree_traverse_state_t context)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static file_tree_h</type>
      <name>new_node</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga28faa4d05424278449257a5096e72b95</anchor>
      <arglist>(char const *leafname, size_t len)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static file_tree_h</type>
      <name>new_file_node</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga9f44a9189cc56cd79de26e4a7f01a536</anchor>
      <arglist>(char const *leafname, file_filter_t filter)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static file_tree_h</type>
      <name>get_parent</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga09ba952db9934f2613392d77e4bbd30a</anchor>
      <arglist>(file_tree_h child)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>link_in</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga6beba7c66e7be7321451b4205a61cc3d</anchor>
      <arglist>(file_tree_h parent, file_tree_h child)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>file_tree_add_symlink</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gae5370c7c75bb4201b81598d9efa2bc44</anchor>
      <arglist>(file_tree_h root, fs_dir_t parent, char const *symlink, file_tree_callback_t callback)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static file_tree_h</type>
      <name>new_dir_node</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga9f8416e770a5ad58a59e9cbc007ceb6b</anchor>
      <arglist>(file_tree_h root, char const *leafname, fs_dir_t dir, file_filter_t filter, file_tree_callback_t callback)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static file_tree_h</type>
      <name>get_root</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga111660fdf7136b58568b2620f8fdcce7</anchor>
      <arglist>(file_tree_h ft)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static file_tree_h</type>
      <name>seek_child</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga3d5dcbc691f103d3d9f5d79b7670c904</anchor>
      <arglist>(file_tree_h node, char const *childname)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static file_tree_h</type>
      <name>seek</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga90083fdaa82761ac7d12482889cfccd0</anchor>
      <arglist>(file_tree_h ft, char const **path)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static file_tree_h</type>
      <name>deepen</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gac7380d9590983cf47e5eb3f21ae308d4</anchor>
      <arglist>(file_tree_h ft, char const **path)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>traverse</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gaff03af9af848738f48023ade3e4cf81a</anchor>
      <arglist>(file_tree_h ft, file_tree_callback_t callback, char *path_start, char *path_end)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>file_tree_add_canon</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga571dd6f14088dd1cb69527f3d1e85999</anchor>
      <arglist>(file_tree_h root, char const *path, file_tree_callback_t callback)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>file_tree_init</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gac3eef437f729969c976fb68751fe5d6b</anchor>
      <arglist>(file_tree_h ft)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>file_tree_copy_init</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>ga3a492e689bbe51ebc447840d623e51d4</anchor>
      <arglist>(file_tree_h dest, file_tree_const_h src)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>file_tree_finis</name>
      <anchorfile>a00185.html</anchorfile>
      <anchor>gad861e4271ae3a33c284c04a5267ef41a</anchor>
      <arglist>(file_tree_h ft)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>dataset_component</name>
    <title>The Dataset component.</title>
    <filename>a00186.html</filename>
    <subgroup>dataset_interface</subgroup>
    <subgroup>dataset_internals</subgroup>
    <file>dataset.c</file>
    <file>dataset.h</file>
  </compound>
  <compound kind="group">
    <name>dataset_interface</name>
    <title>The Dataset component interface.</title>
    <filename>a00187.html</filename>
    <subgroup>dataset_interface_state_utils</subgroup>
    <file>dataset.c</file>
    <file>dataset.h</file>
    <member kind="function">
      <type>void</type>
      <name>dataset_filter_filetypes</name>
      <anchorfile>a00187.html</anchorfile>
      <anchor>ga2d2c0259095ca16d84bb6a444e68994f</anchor>
      <arglist>(const char *list)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dataset_add</name>
      <anchorfile>a00187.html</anchorfile>
      <anchor>ga6f6b8723d0ba1877de2c42910e740061</anchor>
      <arglist>(char const *path)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>dataset_interface_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00188.html</filename>
    <class kind="struct">dataset_public_state_s</class>
    <member kind="typedef">
      <type>struct dataset_public_state_s</type>
      <name>dataset_public_state_t</name>
      <anchorfile>a00188.html</anchorfile>
      <anchor>ga6f6f63ba53a739f480865146bf23179a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dataset_initor</name>
      <anchorfile>a00188.html</anchorfile>
      <anchor>ga1f4d1da1a591997b06c66bc2b1bca87e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dataset_finitor</name>
      <anchorfile>a00188.html</anchorfile>
      <anchor>gaf865762e873d38324cd2c4de97b67a44</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>dataset_public_state_t *</type>
      <name>dataset_public_h</name>
      <anchorfile>a00188.html</anchorfile>
      <anchor>ga96119d0a2341a502b3d191c089101c15</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>dataset_internals</name>
    <title>The Dataset component interals.</title>
    <filename>a00189.html</filename>
    <subgroup>dataset_internals_state_utils</subgroup>
    <file>dataset.c</file>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>filter_filename</name>
      <anchorfile>a00189.html</anchorfile>
      <anchor>ga76903e3efd3177d738354a630a619b94</anchor>
      <arglist>(const char *filename)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>build_proc</name>
      <anchorfile>a00189.html</anchorfile>
      <anchor>gaa9ebc65a1005cb1729c8e73deb990ac0</anchor>
      <arglist>(file_tree_h ft, char const *name, file_tree_traverse_state_t context)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>dataset_internals_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00190.html</filename>
    <class kind="struct">dataset_state_s</class>
    <member kind="typedef">
      <type>struct dataset_state_s</type>
      <name>dataset_state_t</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>gaff7399637f1a9ac49f6903eaead9e084</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dataset_initor</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>ga1f4d1da1a591997b06c66bc2b1bca87e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dataset_finitor</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>gaf865762e873d38324cd2c4de97b67a44</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dataset_init</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>gafeb49f8937f7ca981bb32981855b2fe5</anchor>
      <arglist>(dataset_state_t *)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dataset_finis</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>gaf04f173568d72bfb7a5a4cbe145be98c</anchor>
      <arglist>(dataset_state_t *)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static dataset_state_t</type>
      <name>dataset_state</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>gaaf8cc0e7e61334c968a218075d1bcd2f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>dataset_state_t *</type>
      <name>dataset_h</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>ga832503f19bf2004799b61f3718ac1f71</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>dataset_public_state_t *</type>
      <name>dataset_public_h</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>ga96119d0a2341a502b3d191c089101c15</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const dataset_state_t *const</type>
      <name>dataset_static_initialiser_h</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>ga8e675c9f2e5c06023144cca99759cc40</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>dataset_init_h</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>ga160bc625d21cdd0df219499a24c28455</anchor>
      <arglist>)(dataset_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>dataset_finis_h</name>
      <anchorfile>a00190.html</anchorfile>
      <anchor>ga98df1ea8a35264529eed291215753afc</anchor>
      <arglist>)(dataset_state_t *)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>canonical_string_component</name>
    <title>The Canonical String component.</title>
    <filename>a00191.html</filename>
    <subgroup>canonical_string_interface</subgroup>
    <subgroup>canonical_string_internals</subgroup>
    <file>canonical_string.c</file>
    <file>canonical_string.h</file>
  </compound>
  <compound kind="group">
    <name>canonical_string_interface</name>
    <title>The Canonical String component interface.</title>
    <filename>a00192.html</filename>
    <file>canonical_string.c</file>
    <file>canonical_string.h</file>
    <member kind="typedef">
      <type>struct canonical_string_impl *</type>
      <name>canonical_string_h</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>gaeaaf3f14e53349a3c93fe2ec0458969f</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct canonical_string_impl const *</type>
      <name>canonical_string_const_h</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>gaf9453220b71af956f2011eeed67c9c4d</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>canonical_string_h</type>
      <name>canonical_string_new</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>gae91a85cd5467742f32bcd38aaf82e57d</anchor>
      <arglist>(char const *start, size_t nbytes, char const **pend)</arglist>
    </member>
    <member kind="function">
      <type>canonical_string_h</type>
      <name>canonical_numeral</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>gacd5850cf30d25ce7d881f0d1dac14734</anchor>
      <arglist>(struct int_spec const *int_spec)</arglist>
    </member>
    <member kind="function">
      <type>canonical_string_h</type>
      <name>canonical_identifier</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga171205aa4e2a34b7c6b97ae33b7b8322</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function">
      <type>canonical_string_h</type>
      <name>canonical_string_copy</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga64c2f17a98d398f3dbb43721a0903bfa</anchor>
      <arglist>(canonical_string_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>canonical_string_dispose</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga7b75f29ca849892d7141dc4230ee8683</anchor>
      <arglist>(canonical_string_h cs)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>canonical_string_swap</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga6ff1de9d0af6dfa06b3b8bd5c8e4fde7</anchor>
      <arglist>(canonical_string_h lhs, canonical_string_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>canonical_string_assign</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>gac81255d373d0530bd51283cc98899381</anchor>
      <arglist>(canonical_string_h dest, canonical_string_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>canonical_string_equal</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga8a74dde332b649d669f6c385d3367006</anchor>
      <arglist>(canonical_string_const_h lhs, canonical_string_const_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>canonical_string_text</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga4e86df4ab677a8f3d1dd3ccea05e52a2</anchor>
      <arglist>(canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>canonical_string_length</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>gab81c4946255a6e1f8d94c1285659e4b1</anchor>
      <arglist>(canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>canonical_string_compare</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga079b10dd7c75371b5cd1a094cae8b48e</anchor>
      <arglist>(canonical_string_const_h lhs, void const *rhs, size_t rhslen)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>canonical_string_appendc</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga5fa1fa6bb0a91c5aa471b40cc259212d</anchor>
      <arglist>(canonical_string_h cs, char more)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>canonical_string_appends</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>gafb241fad66c4001ec340c8014320af5e</anchor>
      <arglist>(canonical_string_h cs, canonical_string_const_h more, bool punct)</arglist>
    </member>
    <member kind="function">
      <type>canonical_string_h</type>
      <name>canonical_string_substr</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga64fa10a99624961db01a1c93e996328e</anchor>
      <arglist>(canonical_string_const_h cs, size_t start, size_t len)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>canonical_string_replace</name>
      <anchorfile>a00192.html</anchorfile>
      <anchor>ga9c8e7ea96c909b6aecad5420463a72de</anchor>
      <arglist>(canonical_string_h cs, size_t start, size_t len, canonical_string_const_h subst)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>canonical_string_internals</name>
    <title>The The Canonical String component interals.</title>
    <filename>a00193.html</filename>
    <class kind="struct">canonical_string_impl</class>
    <member kind="typedef">
      <type>bool(*</type>
      <name>canonical_string_char_validator_t</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>ga0cfe6b38def067222682eeb1b1a03fe7</anchor>
      <arglist>)(char ch, canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>canonical_string_parse_next_part</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>ga368e6846491154266a50b20a30150781</anchor>
      <arglist>(char const **start, size_t *len)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>canonical_string_init</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>ga8af8a71883c4b1a4a0daa30f2247b8a6</anchor>
      <arglist>(canonical_string_h cs, char const *start, size_t nbytes, char const **pend)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>is_zero_digit</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>ga30a3a31ee9f26cf91132da258198564b</anchor>
      <arglist>(canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>is_octal_numeral</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>ga2d09a716586b23490a1af91d02a9b0eb</anchor>
      <arglist>(canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>is_hex_numeral</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>gaf5799da311567c2ee9d30a604cc0c322</anchor>
      <arglist>(canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>is_decimal_numeral</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>ga477b31ae7a4e34c214d3984c4f244c1e</anchor>
      <arglist>(canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>is_type_suffix_char</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>gabf643de88e94f3125c382404334d02c6</anchor>
      <arglist>(char ch)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static char const *</type>
      <name>integer_type_suffix</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>ga2c66281f3b1e7ee565aaf4f5b094af95</anchor>
      <arglist>(canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>is_valid_digit</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>ga881489a38705995ee4312ed02053e499</anchor>
      <arglist>(char ch, canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>is_valid_symbol_char</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>gab12f8c4bf4a012d7cc8105ee4cdde3b4</anchor>
      <arglist>(char ch, canonical_string_const_h cs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>canonical_string_init_by_test</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>gab37819898b3a01ca2c06f9b45da557bb</anchor>
      <arglist>(canonical_string_h cs, char const **cpp, canonical_string_char_validator_t validator)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>canonical_string_copy_init</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>ga32ab31fa8e30ee02e28861fc75cb9ff7</anchor>
      <arglist>(canonical_string_h dest, canonical_string_const_h src)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>canonical_string_finis</name>
      <anchorfile>a00193.html</anchorfile>
      <anchor>gae1536cb029191a978072e14935fcf281</anchor>
      <arglist>(canonical_string_h cs)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>eval_result_component</name>
    <title>The Evaluation Result component</title>
    <filename>a00194.html</filename>
    <subgroup>eval_result_interface</subgroup>
    <file>eval_result.c</file>
    <file>eval_result.h</file>
  </compound>
  <compound kind="group">
    <name>eval_result_interface</name>
    <title>The Evaluation Result component interface.</title>
    <filename>a00195.html</filename>
    <class kind="struct">eval_result</class>
    <file>eval_result.c</file>
    <file>eval_result.h</file>
    <member kind="define">
      <type>#define</type>
      <name>EVAL_RESULT_INITOR</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga08ad0a439e74b2ba656a8f5e4d07c245</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_FLAGS</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga3f90f870358f306934a123d803b43184</anchor>
      <arglist>(eval_result, bits)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_FLAGS_IF</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga42d2e9cd28793a6fcc8c23be0e3bfa76</anchor>
      <arglist>(cond, eval_result, bits)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>CLEAR_FLAGS</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga4919b7b0eb3d13000072168f832a8fe9</anchor>
      <arglist>(eval_result, bits)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>CLEAR_FLAGS_IF</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga1bc2dbc35490f99fbae5f6ad893468cc</anchor>
      <arglist>(cond, eval_result, bits)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>FLIP_FLAGS</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gada656c856c183a68b1eb75585d357276</anchor>
      <arglist>(eval_result, bits)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>FLAGS_IN</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga2328198359d37573e1126921cda6fbcf</anchor>
      <arglist>(eval_result, bits)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>AFFIRM_FLAGS</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga7282f191d1cc9c319836026f7bb713ba</anchor>
      <arglist>(eval_result, bits)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DENY_FLAGS</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga88d6e0407153423eb65e6453469407ff</anchor>
      <arglist>(eval_result, bits)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IS_TRUE</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga761883b1a7c802a6e980c7689595db26</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IS_FALSE</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gae7a495e2808167a83fbc6374afa5e0c0</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IS_CONST</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gae33373fe8b9bc7a5c31283d5500277d8</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>INT_WIDTH</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga7871d945e2a0f19aee50432bbd89eb51</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>UNRESOLVED</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gaa92f13d3b833f21e0345bcc195a5068e</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>RESOLVED</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gaad6c0f0aa59e9fcf06d4b952c97083f3</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_REPORTED</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga0853e206c15a7a353ba4bfcd63115abb</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>REPORTED</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gaaa95adc06a74bc8d81509aa51cb0c4d9</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DEL_PAREN</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga6a48ac87890169a2d17ab1daca5db5e7</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_DEL_PAREN</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gad5d1f2fd53a846d656945274176617ea</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_KEEP_PAREN</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga94eff8aa1a2695d739e0311547e44b47</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>KEEP</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gabac86ad74b519f2a290a3a5499def92c</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_KEEP</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga25f6c4e6f322c6f69bda05b1b63277cb</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>KEEP_CONST</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gaac1dd2956ede97cbbb13f818124e8776</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_KEEP_CONST</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga902623a7a52782d2ebbffaa435476629</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_CONST</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga67f92fd5c38a1da860db8ad26d370094</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_ILLEGAL</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga6f3e6b023d59fa829921587f9300b34a</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_LEGAL</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga7ef1c6f0844c4e922a1aee2696f4afed</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>ILLEGAL</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gaa7581bd94c83e1a854180d44867ad99e</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>LEGAL</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gac6f04077029e732f9d27a768e9e5679f</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_UNRESOLVED</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga4ddcab800ac2481ab10b3d1b3192f934</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_INSOURCE_SYM</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga318482413a496dc3d73b2a379065317c</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>INSOURCE_SYM</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga42da682b682b7b18fc61abd8167f9cce</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SET_GLOBAL_SYM</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga6aba1fb92dae674ba5110913ff4bdf24</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>GLOBAL_SYM</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga4e2a2f608bdd44a06ab9a1e2af42f236</anchor>
      <arglist>(eval_result)</arglist>
    </member>
    <member kind="typedef">
      <type>struct eval_result</type>
      <name>eval_result_t</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga9d323f51092ec38c7edb29bedc0b7fe4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>eval_flags</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga32b0ee28e25ceb932fe1f65268541f70</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_PENDING</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70a05dffc3d31f02e12a6c3b43ab2771122</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_CONST</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70aabad7c345f43b12ceeb0e1f9eb701022</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_KEEP</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70a3399875c83a70766401a6e2267e1fc65</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_KEEP_CONST</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70a71a7e40c411b4e07dbc70d59784daa81</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_DEL_PAREN</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70a784a92e6d0bb9798aa7b8167da872381</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_TRUE</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70a590d6a2089472014cd56d1ef2fa10a12</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_FALSE</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70a16dba859e68c1fc01555f97f5483aaa9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_ILLEGAL</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70a07fa53025e1f9e7ec4eb7149a388cd2a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_INSOURCE_SYM</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70ad406e4e9128b2021c9aff904aca9a6f3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_GLOBAL_SYM</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70ac4b814eb7eed6f3b66807482f1abeacd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_REPORTED_SYM</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70ab9b7f589dccc78648cc92d85049b5d6e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_RESOLVED</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70a93397fa7a837a3ba57173fd884de95cf</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EVAL_PARSED</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga32b0ee28e25ceb932fe1f65268541f70a745ea01b08325d99ffedfccd3f3a0c2e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>line_type_t</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga0c6844b4ac7b26713d1b8d8f1ce896df</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_IF</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfa0294e9910bfeb09ffff84ce5086842e0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_TRUE</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfa646d2bb88b70f043a1bb99b5a07c5355</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_FALSE</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfabc191cb00df36d0090d5af59a791c716</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_ELIF</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfa4bfc3699389ad7dce4c6c73ad31d6b13</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_ELTRUE</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfa30a90443e84ce16580ac5323fb343886</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_ELFALSE</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfa4a8ee07d55e0c5dc03045d800dbe9d38</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_ELSE</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfafbfcaae875d7b0d57757ed6cc0c6f73e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_ENDIF</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfa41d5bc4a3ca8214326c01eaa7bec8d11</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_PLAIN</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfafe90a6a5718c5f88080400d2161bb58c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_EOF</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfa32fbb04008b92ea660be2c5e51a65d23</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_DIRECTIVE_DROP</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfa05292a96476d384c1a366e6b26b243f6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_DIRECTIVE_KEEP</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfa525b141fd729d0336e94f44dc24091ab</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LT_SENTINEL</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gga0c6844b4ac7b26713d1b8d8f1ce896dfa347cfbaaa814fe87024950345fae1252</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>eval_result_set_value</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gaac7f8c5270b1a47c2b23aa35e976de3e</anchor>
      <arglist>(eval_result_t *result, int_spec_t const *int_spec)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>eval_result_clear</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gada8f020b0582af2c597eac9cb1b801d5</anchor>
      <arglist>(eval_result_t *result)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>eval_result_parsed</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga81df7aba04fc2af46df4ee8416a02fd7</anchor>
      <arglist>(eval_result_t *result)</arglist>
    </member>
    <member kind="variable">
      <type>int_spec_t const</type>
      <name>int_spec_false</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>ga46dbf0c04d60e6e88d99d7901068493d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int_spec_t const</type>
      <name>int_spec_true</name>
      <anchorfile>a00195.html</anchorfile>
      <anchor>gafbd0c4283552997b95e781a225a0b0bf</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>get_options_component</name>
    <title>The Get Options component.</title>
    <filename>a00196.html</filename>
    <subgroup>get_options_interface</subgroup>
    <file>get_options.c</file>
    <file>get_options.h</file>
  </compound>
  <compound kind="group">
    <name>get_options_interface</name>
    <title>The Get Options component interface.</title>
    <filename>a00197.html</filename>
    <class kind="struct">option</class>
    <class kind="struct">cmd_option</class>
    <class kind="struct">exclusion_list</class>
    <file>get_options.c</file>
    <file>get_options.h</file>
    <member kind="typedef">
      <type>struct cmd_option</type>
      <name>cmd_option_t</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>ga2ab69dfabef3e1ebd0dd6c5ca724c561</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>no_argument</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>gga99fb83031ce9923c84392b4e92f956b5ac5bf117fca352609d0e6cd02ddb3a008</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>required_argument</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>gga99fb83031ce9923c84392b4e92f956b5a0b017dfd3a757dbd00fbb8d62caf0e33</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>optional_argument</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>gga99fb83031ce9923c84392b4e92f956b5ab78b2ae97087d17f362530b184e3217b</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>cmd_option_t const *</type>
      <name>get_command_option</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>gade29aa22d5eec7fd58c9b7102a066718</anchor>
      <arglist>(int argc, char *argv[], cmd_option_t const *commands)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>opts_are_compatible</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>ga48c0cc648096b20180900064f4fbb4ba</anchor>
      <arglist>(int opt_excluder, int opt_excluded, struct exclusion_list const *exclusions, bool indexed)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getopt_long</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>ga73a4f9f8a69bc6ff18c5d8c5df279159</anchor>
      <arglist>(int argc, char *argv[], const char *optstr, struct option const *longopts, int *longind)</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>get_long_opt_name</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>ga77dbb87e3a353d2bda90acf7e264d3f6</anchor>
      <arglist>(struct option const *longopts, int opt)</arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>optind</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>gad5e1c16213bbee2d5e8cc363309f418c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>optopt</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>ga475b8db98445da73e5f62a1ef6324b95</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>char *</type>
      <name>optarg</name>
      <anchorfile>a00197.html</anchorfile>
      <anchor>gadb50a0eab9fed92fc3bfc7dfa4f2c410</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>hash_include_component</name>
    <title>The Hash Include component.</title>
    <filename>a00198.html</filename>
    <subgroup>hash_include_internals</subgroup>
    <subgroup>hash_include_interface</subgroup>
    <file>hash_include.c</file>
    <file>hash_include.h</file>
  </compound>
  <compound kind="group">
    <name>hash_include_internals</name>
    <title>The Hash Include component internals.</title>
    <filename>a00199.html</filename>
  </compound>
  <compound kind="group">
    <name>hash_include_interface</name>
    <title>The Hash Include component interface.</title>
    <filename>a00200.html</filename>
    <file>hash_include.c</file>
    <file>hash_include.h</file>
    <member kind="define">
      <type>#define</type>
      <name>hash_include_dispose</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga12d42809039bcd750aa505ffe44c5d0d</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>hash_include_copy</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>gaef9981cd51bcf5ea8da3037c6375e6e7</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>hash_include_swap</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga247b07a382a2a48a4fd7da10cb327308</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>hash_include_assign</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga60bef065f21ae6ab1d84dbb8fbb60f16</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>hash_include_definition</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga138c8e9ec14ad692339cf492105013a3</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>hash_include_undefine</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga79f99b4f102873400d405a06787b2265</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>hash_include_str</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga672d292e85fefda23f8f023a537bc947</anchor>
      <arglist>(inc_arg)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>hash_include_seen</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga10a037aee6f25b19e6c5a213895da91f</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>hash_include_memorise</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga5a70030b6963a6ab61e4b1c9854ed1f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>hash_include_forget</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga1a5e569aeae040a5449afcf1073f71b1</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>symbol_h</type>
      <name>hash_include_h</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga1db975aa2c19f4976f50703c279aba37</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>symbol_const_h</type>
      <name>hash_include_const_h</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga4577505cf973106db76b47e05b3121ed</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>hash_include_h</type>
      <name>hash_include_new</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga3a1c9b184d701b88682568c065701cee</anchor>
      <arglist>(char const *arg, size_t arglen)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>hash_include_define</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga1d30822c9e58240308de02ef5d3bdf16</anchor>
      <arglist>(hash_include_h hi, canonical_string_const_h def)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>hash_include_compare</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga879a6f4fe5311759d10d402d422e920b</anchor>
      <arglist>(hash_include_const_h lhs, void const *rhs, size_t namelen)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>hash_include_parse</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga76fe93c491d12b3b59d1cd27d97c2c6a</anchor>
      <arglist>(char const *cp, char const **pdiagnostic, canonical_string_h *presolved_val)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>hash_include_changed</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>ga5d2caceef9e27bb058a98345f9a26bdd</anchor>
      <arglist>(hash_include_const_h inc_arg)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>hash_include_commit_evaluation</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>gae485d6e3804b06bbb2237fe1fc0e7e45</anchor>
      <arglist>(hash_include_h inc_arg)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>hash_include_valid</name>
      <anchorfile>a00200.html</anchorfile>
      <anchor>gad675daf355c1b10cd88daf2a8fbbec75</anchor>
      <arglist>(hash_include_const_h inc_arg)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>includes_tally_component</name>
    <title>The Includes Tally component.</title>
    <filename>a00201.html</filename>
    <subgroup>includes_tally_interface</subgroup>
    <subgroup>includes_tally_internals</subgroup>
    <file>includes_tally.c</file>
    <file>includes_tally.h</file>
  </compound>
  <compound kind="group">
    <name>includes_tally_interface</name>
    <title>The Includes Tally component interface.</title>
    <filename>a00202.html</filename>
    <subgroup>includes_tally_interface_state_utils</subgroup>
    <file>includes_tally.c</file>
    <file>includes_tally.h</file>
    <member kind="function">
      <type>void</type>
      <name>hash_include_tally</name>
      <anchorfile>a00202.html</anchorfile>
      <anchor>ga0dad527b2925127eb69b341d315d3d3e</anchor>
      <arglist>(char const *arg, size_t arglen, canonical_string_const_h sym_val)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>includes_tally_interface_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00203.html</filename>
    <class kind="struct">includes_tally_public_state_s</class>
    <member kind="function">
      <type>void</type>
      <name>includes_tally_initor</name>
      <anchorfile>a00203.html</anchorfile>
      <anchor>gab896425ca30b7e82405fa1411692a906</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>includes_tally_finitor</name>
      <anchorfile>a00203.html</anchorfile>
      <anchor>ga3604f1c53a510d69c1b29a4cacf0fc72</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>includes_tally_public_state_t *</type>
      <name>includes_tally_public_h</name>
      <anchorfile>a00203.html</anchorfile>
      <anchor>ga58d577e8c55c7e701836f02cdab89144</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct includes_tally_public_state_s</type>
      <name>includes_tally_public_state_t</name>
      <anchorfile>a00203.html</anchorfile>
      <anchor>ga2e366e77cfe721d79d7b4f4b681ee841</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>includes_tally_internals</name>
    <title>The Includes Tally component internals.</title>
    <filename>a00204.html</filename>
    <subgroup>includes_tally_internals_state_utils</subgroup>
    <file>includes_tally.c</file>
    <member kind="function" static="yes">
      <type>static hash_include_h</type>
      <name>hash_include_lookup</name>
      <anchorfile>a00204.html</anchorfile>
      <anchor>gaf34cfc6bde04aab3451d27536e0bda96</anchor>
      <arglist>(char const *arg, size_t arglen)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>hash_include_add</name>
      <anchorfile>a00204.html</anchorfile>
      <anchor>ga97c9d28b3ec50467e8da7d368fe357f9</anchor>
      <arglist>(hash_include_h inc_arg)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>includes_tally_internals_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00205.html</filename>
    <member kind="function">
      <type>void</type>
      <name>includes_tally_initor</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>gab896425ca30b7e82405fa1411692a906</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>includes_tally_finitor</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>ga3604f1c53a510d69c1b29a4cacf0fc72</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>includes_tally_init</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>ga40b7a909267cd143efd4fcfbf575b02b</anchor>
      <arglist>(includes_tally_state_t *)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>includes_tally_finis</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>gab959a0e9f110fd6fe57c53ae680a0d8c</anchor>
      <arglist>(includes_tally_state_t *)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static includes_tally_state_t</type>
      <name>includes_tally_state</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>ga851a7765268cdcb96c49ef567829bde7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>includes_tally_state_t *</type>
      <name>includes_tally_h</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>ga347fd07e7dc04ba0b8b9158ef28635a4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>includes_tally_public_state_t *</type>
      <name>includes_tally_public_h</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>ga58d577e8c55c7e701836f02cdab89144</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const includes_tally_state_t *const</type>
      <name>includes_tally_static_initialiser_h</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>ga253e8f9332598043ab2ba7b6275cdb16</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>includes_tally_init_h</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>ga849fddd39f25b73c9624ceea4da634a1</anchor>
      <arglist>)(includes_tally_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>includes_tally_finis_h</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>ga2ef7a1546b6271e091be204e00542e7f</anchor>
      <arglist>)(includes_tally_state_t *)</arglist>
    </member>
    <member kind="typedef">
      <type>includes_tally_public_state_t</type>
      <name>includes_tally_state_t</name>
      <anchorfile>a00205.html</anchorfile>
      <anchor>gacec5392149a0cb3ca350cb4de66369a3</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>line_select_component</name>
    <title>The Line Select component.</title>
    <filename>a00206.html</filename>
    <subgroup>line_select_interface</subgroup>
    <subgroup>line_select_internals</subgroup>
    <file>line_select.c</file>
    <file>line_select.h</file>
  </compound>
  <compound kind="group">
    <name>line_select_interface</name>
    <title>The Line Select component interface.</title>
    <filename>a00207.html</filename>
    <subgroup>line_select_interface_state_utils</subgroup>
    <file>line_select.c</file>
    <file>line_select.h</file>
    <member kind="function">
      <type>bool</type>
      <name>eligible_line</name>
      <anchorfile>a00207.html</anchorfile>
      <anchor>ga313bb1a10f48ecb6e1990039b528ac35</anchor>
      <arglist>(int cmd_code, int directive)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>dropping_line</name>
      <anchorfile>a00207.html</anchorfile>
      <anchor>ga7c8c317b0bc7b28e00f3066bddbebc69</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>line_select_interface_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00208.html</filename>
    <class kind="struct">line_select_public_state_s</class>
    <member kind="typedef">
      <type>struct line_select_public_state_s</type>
      <name>line_select_public_state_t</name>
      <anchorfile>a00208.html</anchorfile>
      <anchor>gac3bb3f93c8244372254e9e996d46dd14</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>line_select_public_state_t *</type>
      <name>line_select_public_h</name>
      <anchorfile>a00208.html</anchorfile>
      <anchor>ga16f97f56230c3d4d0bf0f2f619c79317</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>line_select_initor</name>
      <anchorfile>a00208.html</anchorfile>
      <anchor>ga66e2ce42f5077cb96d2e11bc031a1ce3</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>line_select_finitor</name>
      <anchorfile>a00208.html</anchorfile>
      <anchor>ga6c5140662a2e0d256fe6c08f88d3de59</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>line_select_internals</name>
    <title>The Line Select component internals.</title>
    <filename>a00209.html</filename>
    <subgroup>line_select_internals_state_utils</subgroup>
    <file>line_select.c</file>
  </compound>
  <compound kind="group">
    <name>line_select_internals_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00210.html</filename>
    <member kind="typedef">
      <type>line_select_public_state_t</type>
      <name>line_select_state_t</name>
      <anchorfile>a00210.html</anchorfile>
      <anchor>ga9c0daff8867bfd556f2262c7073cdab8</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>swiss_army_component</name>
    <title>The Swiss Army component.</title>
    <filename>a00211.html</filename>
  </compound>
  <compound kind="group">
    <name>symbol_component</name>
    <title>The Symbol component.</title>
    <filename>a00212.html</filename>
    <subgroup>symbol_interface</subgroup>
    <subgroup>symbol_internals</subgroup>
    <file>symbol.c</file>
    <file>symbol.h</file>
  </compound>
  <compound kind="group">
    <name>symbol_interface</name>
    <title>The Symbol component interface.</title>
    <filename>a00213.html</filename>
    <file>symbol.c</file>
    <file>symbol.h</file>
    <member kind="typedef">
      <type>struct eval_result *</type>
      <name>symbol_h</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gadbd94efe451bd35fd3edc77f031a491f</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct eval_result const *</type>
      <name>symbol_const_h</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga8741b7ee3cce967ec0e2171798564f51</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>symbol_h</type>
      <name>symbol_new</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gac3b51b542091b5759ab203c0f4c68a1d</anchor>
      <arglist>(char const *name, size_t namelen)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>symbol_dispose</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gabe68c5ef0eb5772d0d3ac02c68fd21cf</anchor>
      <arglist>(symbol_h sym)</arglist>
    </member>
    <member kind="function">
      <type>symbol_h</type>
      <name>symbol_copy</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga6adc243becd6b4b117d1a3051470b37f</anchor>
      <arglist>(symbol_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>symbol_swap</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga069895e5bb663519d33c668f867b5b5a</anchor>
      <arglist>(symbol_h lhs, symbol_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>symbol_assign</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga4f72cac51dae41ab70333a946d34cea9</anchor>
      <arglist>(symbol_h dest, symbol_const_h src)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>symbol_equal</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga34b51acddb0c982f98c9c6089d7e77e1</anchor>
      <arglist>(symbol_const_h lhs, symbol_const_h rhs)</arglist>
    </member>
    <member kind="function">
      <type>line_type_t</type>
      <name>symbol_define</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gabbb01748a8e92c7e099fe13c73933d6d</anchor>
      <arglist>(symbol_h sym, char const *tail, char const **pend)</arglist>
    </member>
    <member kind="function">
      <type>line_type_t</type>
      <name>symbol_undefine</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gaec5bc2d5b53898df220c244fa052aba4</anchor>
      <arglist>(symbol_h sym, char const *tail, char const **pend)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>symbol_name</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gac69a5d85f32c37e5ec429db887a2512d</anchor>
      <arglist>(symbol_const_h sym)</arglist>
    </member>
    <member kind="function">
      <type>canonical_string_const_h</type>
      <name>symbol_definition</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gab395566be53ca470a559879a2766bf73</anchor>
      <arglist>(symbol_const_h sym)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>symbol_compare</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga80747dd0ef4c75cd0e5d476f24a1ee7e</anchor>
      <arglist>(symbol_const_h lhs, void const *rhs, size_t namelen)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>symbol_is_legal</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga92ae58559b23b4f7de9b9d3f7b6da5c8</anchor>
      <arglist>(char const *tok, size_t toklen)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>symbol_is_configured</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gad2e061fd99107c3f87b5ce1672907921</anchor>
      <arglist>(symbol_const_h sym)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>symbol_is_global</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gac704f21c07b59ab515b511a8999d72c3</anchor>
      <arglist>(symbol_const_h sym)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_symbol_start_char</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga995707ab23507b83334c306e7be98f3d</anchor>
      <arglist>(char cp)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_symbol_inner_char</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gab0332fdb5b342f0e45e9df5cd20c641f</anchor>
      <arglist>(char cp)</arglist>
    </member>
    <member kind="function">
      <type>canonical_string_const_h</type>
      <name>symbol_resolve</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga4add501589e09bfff807f3160fb589eb</anchor>
      <arglist>(symbol_h sym, ptr_vector_h history)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>symbol_reported</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>ga93904a4d3e07b5e79fd9cd84d972363b</anchor>
      <arglist>(symbol_const_h sym)</arglist>
    </member>
    <member kind="function">
      <type>line_type_t</type>
      <name>symbol_evaluate_status</name>
      <anchorfile>a00213.html</anchorfile>
      <anchor>gab21ffd5e3ac80fcf04e1eb608db23f75</anchor>
      <arglist>(bool define, char const *symstart, const char *tail, const char **pend)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>symbol_internals</name>
    <title>The Symbol component internals.</title>
    <filename>a00214.html</filename>
    <file>symbol.c</file>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>symbol_init</name>
      <anchorfile>a00214.html</anchorfile>
      <anchor>ga18e950a50e8f23d82bc88abbbb392668</anchor>
      <arglist>(symbol_h sym, char const *name, size_t namelen)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>symbol_copy_init</name>
      <anchorfile>a00214.html</anchorfile>
      <anchor>gafa188374cc79e3dab9801b85e4cfdb00</anchor>
      <arglist>(symbol_h dest, symbol_const_h src)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>symbol_name_compare</name>
      <anchorfile>a00214.html</anchorfile>
      <anchor>gac0c10e67d5e28d2cce80805b08d3065b</anchor>
      <arglist>(symbol_const_h sym, char const *name, size_t namelen)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>report_symbol_configuration</name>
      <anchorfile>a00214.html</anchorfile>
      <anchor>ga2d786b42c269b1803689dcb18c4bd3e2</anchor>
      <arglist>(bool define, int gripe, symbol_const_h sym, canonical_string_const_h old_def, canonical_string_const_h new_def, char const *tail)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static canonical_string_h</type>
      <name>symbol_definition_resolve</name>
      <anchorfile>a00214.html</anchorfile>
      <anchor>gab97c9221309b21fe5c3205077b286d48</anchor>
      <arglist>(symbol_const_h sym, ptr_vector_h history)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>directives_tally_component</name>
    <title>The Directives Tally component.</title>
    <filename>a00215.html</filename>
    <subgroup>directives_tally_interface</subgroup>
    <subgroup>directives_tally_internals</subgroup>
    <file>directives_tally.c</file>
    <file>directives_tally.h</file>
  </compound>
  <compound kind="group">
    <name>directives_tally_interface</name>
    <title>The Directives Tally component interface.</title>
    <filename>a00216.html</filename>
    <subgroup>directives_tally_interface_state_utils</subgroup>
    <file>directives_tally.c</file>
    <file>directives_tally.h</file>
    <member kind="enumeration">
      <name>directive_type_t</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>ga5b793074376b6ca69e25a846dc68fccb</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_UNKNOWN</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccba9b8e99ea2698fbaabf3976784e7b5d16</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_IF</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccba10c6b77e19fa5980ac378db3e2444f4f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_IFDEF</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccba4c6e6e78a472a75c81eb484fd737215c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_IFNDEF</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccbaae1f9d5a9c9dfc1d1cd545692d8b4f34</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_ELSE</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccba1d91047f06e190f40a9a2508cd3bd5a1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_ELIF</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccba09aad12c6de32dab45397b4bdb7fb95c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_ENDIF</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccba8219f1d5797e5e2fb6a563b12e79f1b8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_DEFINE</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccbab2325161093d4be99429a7fe35da5405</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_UNDEF</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccba201fe22b92aef27243b627617153caae</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_INCLUDE</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccba52ea004f13c3104809c41e072effe1db</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_PRAGMA</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccbab9e061de92f6c268a1763aa3ee30667a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_ERROR</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccba20da15fed760e5f61c030aab221d26f6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HASH_COUNT</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gga5b793074376b6ca69e25a846dc68fccba126fbfef79aa8cfbc95579b01c9faba4</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>directive_tally</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>gad6f7a51943d3442696918f21046940c0</anchor>
      <arglist>(canonical_string_const_h cl, directive_type_t directive_type)</arglist>
    </member>
    <member kind="function">
      <type>directive_type_t</type>
      <name>get_directive_type</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>ga26566f0158e67dabcd4b4e16328fae75</anchor>
      <arglist>(char const **keyword)</arglist>
    </member>
    <member kind="function">
      <type>char const *</type>
      <name>get_directive_keyword</name>
      <anchorfile>a00216.html</anchorfile>
      <anchor>ga931021410995c2b0841e1ae200a9b366</anchor>
      <arglist>(directive_type_t directive_type)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>directives_tally_interface_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00217.html</filename>
  </compound>
  <compound kind="group">
    <name>directives_tally_internals</name>
    <title>The Directives Tally component internals.</title>
    <filename>a00218.html</filename>
    <class kind="struct">directive</class>
    <subgroup>directives_tally_internals_state_utils</subgroup>
    <file>directives_tally.c</file>
    <member kind="typedef">
      <type>struct directive</type>
      <name>directive_t</name>
      <anchorfile>a00218.html</anchorfile>
      <anchor>ga113e817c2af28adae5754b00b9896681</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" static="yes">
      <type>static canonical_string_const_h</type>
      <name>directive_text_lookup</name>
      <anchorfile>a00218.html</anchorfile>
      <anchor>gaa14e51f35fcc4afb176081dc904a9921</anchor>
      <arglist>(canonical_string_const_h cl, directive_type_t directive_type)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>directive_text_add</name>
      <anchorfile>a00218.html</anchorfile>
      <anchor>gaa481712a88fa3fec987194c5658491f4</anchor>
      <arglist>(canonical_string_const_h cl, directive_type_t directive_type)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static directive_t const</type>
      <name>directives_dict</name>
      <anchorfile>a00218.html</anchorfile>
      <anchor>gabbcfbd0ef63107645efdbb7cf1038915</anchor>
      <arglist>[]</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>directives_tally_internals_state_utils</name>
    <title>Macro-generated code</title>
    <filename>a00219.html</filename>
    <class kind="struct">directives_tally_state_s</class>
    <member kind="typedef">
      <type>directives_tally_state_t</type>
      <name>directives_tally_public_state_t</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>ga08aa4a3ee1c3e1f6a0a9b62af3d3f28d</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>directives_tally_initor</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>ga738906a7dce11dcab6a0346dcf014812</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>directives_tally_finitor</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>ga80b7d46c3af7f6d479c88ea35ffc6a6d</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>directives_tally_init</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>ga997fc4f0b02b446ad711deef47e99fa8</anchor>
      <arglist>(directives_tally_state_t *)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>directives_tally_finis</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>ga3e306e4805ad74b0ce60b3ca45cfefeb</anchor>
      <arglist>(directives_tally_state_t *)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static directives_tally_state_t</type>
      <name>directives_tally_state</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>ga7d594217a66f25f1f01d28d8e7f36fda</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>directives_tally_state_t *</type>
      <name>directives_tally_h</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>gaaff4e40b483c8c24fb7c2eeddd26c967</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>directives_tally_public_state_t *</type>
      <name>directives_tally_public_h</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>gaeb9d3001fb3d24ab936b4938eba2c40e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const directives_tally_state_t *const</type>
      <name>directives_tally_static_initialiser_h</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>ga40467667d8d2dbe39abdc48e3feb56a7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>directives_tally_init_h</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>ga9d6bdffceef597c826f204d9cc26e0c4</anchor>
      <arglist>)(directives_tally_state_t *)</arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>directives_tally_finis_h</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>ga5dc2b05b6bf1eb33144d272f4c29b995</anchor>
      <arglist>)(directives_tally_state_t *)</arglist>
    </member>
    <member kind="typedef">
      <type>struct directives_tally_state_s</type>
      <name>directives_tally_state_t</name>
      <anchorfile>a00219.html</anchorfile>
      <anchor>ga8a4dc01a888ca7b6268fb135e1ac91b5</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>lexicon_component</name>
    <title>The Lexicon component.</title>
    <filename>a00220.html</filename>
    <subgroup>lexicon_interface</subgroup>
    <subgroup>lexicon_internals</subgroup>
    <file>lexicon.c</file>
    <file>lexicon.h</file>
  </compound>
  <compound kind="group">
    <name>lexicon_interface</name>
    <title>The Lexicon component interface.</title>
    <filename>a00221.html</filename>
    <file>lexicon.c</file>
    <file>lexicon.h</file>
    <member kind="define">
      <type>#define</type>
      <name>IF</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gac138c68a0709c57bc5f7567abc1558eb</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IFDEF</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga506761c33d63713eb3a3a5e5fa6cef6e</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IFNDEF</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gaebd32bb1a9648326697f1fff3e2e31c9</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>ELSE</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga0a70ee0cbf5b1738be4c9463c529ce72</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>ELIF</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gab19946ce7cd5cb117993ed5fcbcb79fb</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>ENDIF</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gaf7039fb6fb9cb00f8e223a05e1ee436b</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DEFINE</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gade00b3fdd54e15e954daf361878b065e</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>UNDEF</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gabde25a67f4046530ae1c572cefeb5869</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>INCLUDE</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga391839f157e857028cd094e755cc2233</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PRAGMA</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gaac0ed3e151f909c1b30db30b14cd0551</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>ERROR</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga8fe83ac76edc595f6b98cd4a4127aed5</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DEFINED</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga1ba60eb36a5d04b11d6cc505858196ed</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>BOOLEAN_OR</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga1801fc4fafd0817c7db97daf109ecee8</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>BOOLEAN_AND</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga84c20d2efbc352490c302e2f4ac9bc90</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>BIT_OR</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga4a86c92e3da9750fd6e3517fa7565504</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>BIT_XOR</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga72ac2986a95d9ed99fb3a9e51876254c</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>BIT_AND</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gae5f62ce7db1befe3bcae9311fa5f6267</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>EQ</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gabaab8d42f075ee8ddc9b70951d3fd6cd</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>NEQ</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga2b6ba3ea1fe3e8cc970ad05cd05d703b</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>LE</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gaa4d6abc7b58eb11e517993df83b7f0f7</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>GE</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga38a01c8e60e89c1d671a68259085288f</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>LESS</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga16bcdd65ecdd3313af9e393538fa7fa8</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>GREATER</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gae27a03218878a9af9d7d946e186f8598</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>LSHIFT</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga0f77a13b2beaed43fa72e36ed62889d3</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>RSHIFT</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga1049a0169e895645cf0ca72784a1ee13</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>ADD</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga97fe5470fb1ac167c713671655ff3e52</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SUBTRACT</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga11810504a58eb589b148305b4049ffe0</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MULTIPLY</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga758cb9b9f3dfd247f86065edc057a552</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DIV</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga8295e0aed07a8923d8363ce46c7b08e2</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MOD</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>gaca7d5718ab8c38506adb3bef2469b319</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>match_keyword</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga68ab478256581f5aad394e0142270624</anchor>
      <arglist>(char const **ptxt, char const *keyword)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>match_op</name>
      <anchorfile>a00221.html</anchorfile>
      <anchor>ga1007a7776e3f86524d4be50d7639a2be</anchor>
      <arglist>(char const **ptxt, char const *op)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>lexicon_internals</name>
    <title>The Lexicon component internals.</title>
    <filename>a00222.html</filename>
    <file>lexicon.c</file>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>text_match</name>
      <anchorfile>a00222.html</anchorfile>
      <anchor>ga44eaee1d7e1071e1044cb75b34aee3df</anchor>
      <arglist>(char const **ptxt, char const *match, size_t nbytes)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>integer_constant_component</name>
    <title>The Integer Constant component.</title>
    <filename>a00223.html</filename>
    <subgroup>integer_constant_interface</subgroup>
    <subgroup>integer_constant_internals</subgroup>
    <file>integer_constant.c</file>
    <file>integer_constant.h</file>
  </compound>
  <compound kind="group">
    <name>integer_constant_interface</name>
    <title>The Integer Constant component interface.</title>
    <filename>a00224.html</filename>
    <file>integer_constant.c</file>
    <file>integer_constant.h</file>
    <member kind="function">
      <type>int_spec_t</type>
      <name>eval_numeral</name>
      <anchorfile>a00224.html</anchorfile>
      <anchor>ga080cd28154b64e792d76141abddf8d40</anchor>
      <arglist>(char const *num, char const **numend)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>eval_character_constant</name>
      <anchorfile>a00224.html</anchorfile>
      <anchor>ga9cf78487f2a27bb74f53d5368f26d5c0</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>integer_constant_internals</name>
    <title>The Integer Constant component internals.</title>
    <filename>a00225.html</filename>
    <file>integer_constant.c</file>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>char_escape_val</name>
      <anchorfile>a00225.html</anchorfile>
      <anchor>gab4154744c0ae922b615954557672649e</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static unsigned long long</type>
      <name>decode_utf8</name>
      <anchorfile>a00225.html</anchorfile>
      <anchor>ga491b8d5611111a28ac1df6fe19d681f7</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static unsigned long long</type>
      <name>eval_numeral_helper</name>
      <anchorfile>a00225.html</anchorfile>
      <anchor>ga867c94be49004d6a2592cdddde2cb3dd</anchor>
      <arglist>(char const **pnum, unsigned int base, bool *overflow)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static unsigned long long</type>
      <name>eval_numerical_character_constant</name>
      <anchorfile>a00225.html</anchorfile>
      <anchor>ga6b40d5023942ec5d868774409fb387d5</anchor>
      <arglist>(char const **cpp, int base)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static unsigned long long</type>
      <name>eval_octal_character_constant</name>
      <anchorfile>a00225.html</anchorfile>
      <anchor>ga50488db79c3df5b4419ed1b8875b0738</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static unsigned long long</type>
      <name>eval_hex_character_constant</name>
      <anchorfile>a00225.html</anchorfile>
      <anchor>gaecd3fb17c66aec650a00c7c94ad96e17</anchor>
      <arglist>(char const **cpp)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>integer_ops_component</name>
    <title>The Integer Operations component.</title>
    <filename>a00226.html</filename>
    <subgroup>integer_ops_interface</subgroup>
    <subgroup>integer_ops_internals</subgroup>
    <file>integer_ops.c</file>
    <file>integer_ops.h</file>
  </compound>
  <compound kind="group">
    <name>integer_ops_interface</name>
    <title>The Integer Operations component interface.</title>
    <filename>a00227.html</filename>
    <class kind="struct">int_spec</class>
    <file>integer_ops.c</file>
    <file>integer_ops.h</file>
    <member kind="define">
      <type>#define</type>
      <name>RANK</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga48e81ed309d5e54cad105bacf05dfecc</anchor>
      <arglist>(int_type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SIZEOF</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga8e701444c77375c5014cc2812f40eb1b</anchor>
      <arglist>(int_type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>IS_SIGNED</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gaa689e66b0f18e6000d0e1d54ef771dbf</anchor>
      <arglist>(int_type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MAKE_SIGNED</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga1157d598db40a9013cb9a60b31672a9f</anchor>
      <arglist>(int_type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MAKE_UNSIGNED</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gabbaa9e2062ee5c6828dbd947c31cba2a</anchor>
      <arglist>(int_type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>INT_UNION_INITOR</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga103ebaa10ebec338489169fe9c81a338</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>INT_SPEC_INITOR</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga9af45e524977bc4aee069b8662b7a0b1</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct int_spec</type>
      <name>int_spec_t</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gac8351d206b8963ad06efd577c8cbf154</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>int_spec_t(</type>
      <name>integer_bin_op_t</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gae054eade5bbc2f25e4c87adc516ae5e6</anchor>
      <arglist>)(int_spec_t const *, int_spec_t const *)</arglist>
    </member>
    <member kind="enumeration">
      <name>int_type</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gad4e628ec3a9276027d7ada1e492f4a2a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_UNDEF</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aab730820b690f521a35250e7ade0051fd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_CHAR</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aa2e81335af10ab934b20046216ec8e9dd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_UCHAR</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aa085166e6ca341dbe80afe66ac946c789</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_SHORT</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aa3e9beddecec8e557aa6a8f000bba0496</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_USHORT</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aa47232731f8cc74aca6a802496a629e16</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_INT</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aa7cae5e672a1e36c8b6cd156b0191ca57</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_UINT</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aaa75b57fa077ee6b7230aa343f6b2daee</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_LONG</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aae5b6d0faa8ebc734c6cabd84420096e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_ULONG</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aa53740fc99974d6755fea0575a7a2c1a4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_LLONG</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aabff33ff576ea5ebf0491ec7e3cc9aa7e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_ULLONG</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aa54d6195df15ad69c781506298ac6fa6e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_TOO_BIG</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aacca208bc6ce67016b603d0461ae1e297</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>INT_INSOLUBLE</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ggad4e628ec3a9276027d7ada1e492f4a2aa336015f546e66c0bd65c95c2833e9bf8</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>lt</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga8c7e12905e7213334a6646e5d4d37f4e</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>gt</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga837366aa8fb859764144a3f29a987655</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>le</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga83a8133cbd462fe97cdc6075be841500</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>ge</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga27dcfd7ad42b27e1d8cd11a255b71675</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>eq</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga2a0dfeb6f571b17d63be4517f5ae975c</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>ne</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga95e41a7a9d9f66ddd98ed1788f294667</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>bit_and</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga63146e4abed3add7482707a494bca738</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>bit_or</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga255f2644183abb57d1e8582d0fa5b304</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>bit_xor</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga4002187e3d53f19157167641868039df</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>complement</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga1b60a4adde057ca2ea2ae79e128787fd</anchor>
      <arglist>(int_spec_t const *int_spec)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>minus</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga1325e78e1015dece43f5faa352b43b01</anchor>
      <arglist>(int_spec_t const *int_spec)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>lshift</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gaef6dcc872591a671187edb4eb9a50e08</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>rshift</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gaf72359fe76767a4ae990d103102dad6e</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>add</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gab87f9928822bad57ee7342d8dcfcb95e</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>subtract</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gab4cb8bc9161e80d1f99e85a78b202ea2</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>multiply</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gac1743d3ea7f2297361de575bf2cf0f88</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>divide</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga7d1130c8629a0c8beb26c5649e643b66</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>modulus</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gaa7f8b4fff8b2457350065637a6d29863</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>boolean_and</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga0cebe0399b3efb90e869db8a50230393</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>boolean_or</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>gaf440e77f7f3c36d3dd07b87b85a8d456</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r)</arglist>
    </member>
    <member kind="function">
      <type>int_spec_t</type>
      <name>negate</name>
      <anchorfile>a00227.html</anchorfile>
      <anchor>ga6d7304db3c33f2b8b4dd9191e79d5249</anchor>
      <arglist>(int_spec_t const *int_spec)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>integer_ops_internals</name>
    <title>The Integer Operations component internals.</title>
    <filename>a00228.html</filename>
    <file>integer_ops.c</file>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>sign</name>
      <anchorfile>a00228.html</anchorfile>
      <anchor>gae6ead6bd49c75eeeb19581ebdf8f185b</anchor>
      <arglist>(int_spec_t const *int_spec)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>sign_extend</name>
      <anchorfile>a00228.html</anchorfile>
      <anchor>ga9f52943ad4e76c8d5d417b57cdef4404</anchor>
      <arglist>(int_spec_t *converted, int_spec_t const *unconverted)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>do_usual_conversions</name>
      <anchorfile>a00228.html</anchorfile>
      <anchor>ga5b7b87d42560a5612f06b580629c6fd5</anchor>
      <arglist>(int_spec_t const *l, int_spec_t const *r, int_spec_t *cl, int_spec_t *cr)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>check_shift_validity</name>
      <anchorfile>a00228.html</anchorfile>
      <anchor>gae5140ce0090bb1bb86acf9ea61554a29</anchor>
      <arglist>(char const *direction, int_type type, int_spec_t const *shiftval)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>args_public_state_s</name>
    <filename>a00001.html</filename>
    <member kind="variable">
      <type>cmd_option_t *</type>
      <name>command</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>a90b5607e18b9d1a290c32aab0f7a0ac9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>char *</type>
      <name>exec_path</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>a1b3e535d16b7c7f1b432f2be120ec92f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>char *</type>
      <name>prog_name</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>a17e16241fc1bef944e2e9f560c642f2c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>char *</type>
      <name>backup_suffix</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>a7ff1f78de07c632f82cf24483aa4d8ff</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>got_opts</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>a18bbf32681db79215904c60a0fa7b163</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>replace</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>a040b0fe39eb760786d0f131fdfc5215a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>list_locate</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>a60d9243311ccb5d5c42af826e14aa066</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>list_only_once</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>abee421d835da684638c0968be8cb5883</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>list_only_active</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>afb1d3279697488d2020f3a8a4b9ffd7b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>list_only_inactive</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>a7ac85adbcd134a61bca971d1d40fd0c2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>list_symbols_in_ifs</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>abdf396ba38c81696a602222f2776f8ea</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>list_symbols_in_defs</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>a56858ba1e3c3bbd935bb3bf2b0f8f99b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>list_symbols_in_undefs</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>adc3ac9ee5f994318b1eac1828814d588</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>list_symbols_in_includes</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>a1ec58d4c944a1cf9d5fb3cf5f6ddcc55</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>list_system_includes</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>a8ad9ed8b116c948b7c506fb0e595f114</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>list_local_includes</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>addada508e9cc588d776e4d6c152ac7e0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>complement</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>a03db8d94731201593292fbb0f7b0f794</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>eval_consts</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>a272dec3a3c4dd74cd921ab895c349bb6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>resolve_symbols</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>ac2e0eae21b5c3432c16457b3aeaafbf9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>discard_policy_t</type>
      <name>discard_policy</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>a2b510b5eb4dfc925517f16d953070766</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>line_directives</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>a56951764b006b562f8ab3821b75deed9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>plaintext</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>aad1fc95dba4b098fd62e2fe403bc3bd6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>recurse</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>ae5ec8c1998ddb7b36b0f728b0a0358af</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>keepgoing</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>a18414905fac7f4955a23d797f292593c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>implicit</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>a23523eb5c2199c11acb7154b2c7ff342</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>diagnostic_filter</name>
      <anchorfile>a00001.html</anchorfile>
      <anchor>a435a8753e212b0b8ba6089c9f16ac296</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>args_state_s</name>
    <filename>a00002.html</filename>
    <member kind="variable">
      <type>args_public_state_t</type>
      <name>args_public_state</name>
      <anchorfile>a00002.html</anchorfile>
      <anchor>adb10174c8fab452487b102469fa93e7a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>ptr_vector_h</type>
      <name>argfile_argv</name>
      <anchorfile>a00002.html</anchorfile>
      <anchor>a6e1a19c3075c9b5abd7861390f3a9fea</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>char *</type>
      <name>memfile</name>
      <anchorfile>a00002.html</anchorfile>
      <anchor>ae69fe2c48b5d56e54330d7f8ef496859</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>arg_dirs_ignored</name>
      <anchorfile>a00002.html</anchorfile>
      <anchor>ab886a11c18f934969574dd66072891e5</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>canonical_string_impl</name>
    <filename>a00003.html</filename>
    <member kind="variable">
      <type>heap_str</type>
      <name>text</name>
      <anchorfile>a00003.html</anchorfile>
      <anchor>a992e84f457cc43965ee2b5a0e7f2e69e</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>chew_public_state_s</name>
    <filename>a00004.html</filename>
    <member kind="variable">
      <type>enum comment_state</type>
      <name>comment_state</name>
      <anchorfile>a00004.html</anchorfile>
      <anchor>a998a6c9280d3e83d1987eece3451c0bf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>stop_at_quote</name>
      <anchorfile>a00004.html</anchorfile>
      <anchor>adaa185bae6281b4a06f9460898cae03b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>must_balance_quotes</name>
      <anchorfile>a00004.html</anchorfile>
      <anchor>a3f44981424cabd6f2327a80831960d14</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>in_double_quote</name>
      <anchorfile>a00004.html</anchorfile>
      <anchor>a4e90f76e95f24d7d21155580a91422e6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>in_source</name>
      <anchorfile>a00004.html</anchorfile>
      <anchor>a3627d76718e9134d01899ebdcf594732</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>line_state_t</type>
      <name>line_state</name>
      <anchorfile>a00004.html</anchorfile>
      <anchor>a7fc2524ce7edb8b8c9c45ae534c3cd89</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>last_quote_start_line</name>
      <anchorfile>a00004.html</anchorfile>
      <anchor>ab99270aef04a812ffc0c2a2ca3bd8ee3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>last_comment_start_line</name>
      <anchorfile>a00004.html</anchorfile>
      <anchor>a2deff0a2d81b161555e350fb3f3dc4d6</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>chew_state_s</name>
    <filename>a00005.html</filename>
    <member kind="variable">
      <type>chew_public_state_t</type>
      <name>chew_public_state</name>
      <anchorfile>a00005.html</anchorfile>
      <anchor>a5177996e327f9576ec87ad73622d1672</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>single_quote_length</name>
      <anchorfile>a00005.html</anchorfile>
      <anchor>ae0021c3761945079e8927c90b3392f73</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>escape</name>
      <anchorfile>a00005.html</anchorfile>
      <anchor>a1ba7e351fc13761df47d261a8bd5a403</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>cmd_option</name>
    <filename>a00006.html</filename>
    <member kind="variable">
      <type>const char *</type>
      <name>name</name>
      <anchorfile>a00006.html</anchorfile>
      <anchor>a9c63abb9671e677e13528d2a77714351</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>cmd_code</name>
      <anchorfile>a00006.html</anchorfile>
      <anchor>a975d095318ffbe680831dc910736f25c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>cmd_mask</name>
      <anchorfile>a00006.html</anchorfile>
      <anchor>aa8a82f9fb8272125b4de309e48c06050</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>co_precedent_ops</name>
    <filename>a00007.html</filename>
    <member kind="variable">
      <type>evaluator_t *</type>
      <name>inner</name>
      <anchorfile>a00007.html</anchorfile>
      <anchor>a300e04aebee0ed5503ef140039aa3ffc</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>struct operation</type>
      <name>op</name>
      <anchorfile>a00007.html</anchorfile>
      <anchor>a3123614e10613c3555ebd0cc2069ba80</anchor>
      <arglist>[5]</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>configured_symbols_public_state_s</name>
    <filename>a00008.html</filename>
    <member kind="variable">
      <type>ptr_set_h</type>
      <name>global_sym_tab</name>
      <anchorfile>a00008.html</anchorfile>
      <anchor>a55ba3662f990f5c54604b64646785bc7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>ptr_set_h</type>
      <name>sym_tab</name>
      <anchorfile>a00008.html</anchorfile>
      <anchor>aa1e1d6c0672139e42f07d20009a830fc</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>contradiction_public_state_s</name>
    <filename>a00009.html</filename>
    <member kind="variable">
      <type>symbol_const_h</type>
      <name>last_contradictory_undef</name>
      <anchorfile>a00009.html</anchorfile>
      <anchor>a990db911e475d7c77e585cddf40f439e</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>contradiction_state_s</name>
    <filename>a00010.html</filename>
    <member kind="variable">
      <type>contradiction_public_state_t</type>
      <name>contradiction_public_state</name>
      <anchorfile>a00010.html</anchorfile>
      <anchor>a53398f782fe87bd0ee64e472919ef1f7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>char *</type>
      <name>contradiction_insert_prefix</name>
      <anchorfile>a00010.html</anchorfile>
      <anchor>afb1f78f8b793e30614268f41674b23f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>contradiction_insert_reason</name>
      <anchorfile>a00010.html</anchorfile>
      <anchor>a1f99ce83baa3507446cfa2aa57ab82cc</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>had_warnings</name>
      <anchorfile>a00010.html</anchorfile>
      <anchor>a8777ce73201d45a4ffc7293dbb24fd2b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>heap_str</type>
      <name>err_msg_buf</name>
      <anchorfile>a00010.html</anchorfile>
      <anchor>ac6c926a4c6110b92b2f4b780a771576f</anchor>
      <arglist>[2]</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>dataset_public_state_s</name>
    <filename>a00011.html</filename>
    <member kind="variable">
      <type>file_tree_h</type>
      <name>file_tree</name>
      <anchorfile>a00011.html</anchorfile>
      <anchor>ab4520a825d414ee7d875cd7a0969288b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned int</type>
      <name>donefiles</name>
      <anchorfile>a00011.html</anchorfile>
      <anchor>a6a5352ffb811bb41166d0fc5a8a0a31f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned int</type>
      <name>errorfiles</name>
      <anchorfile>a00011.html</anchorfile>
      <anchor>a3d8009c98c3ae6c84ff5aa678ce004dd</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>dataset_state_s</name>
    <filename>a00012.html</filename>
    <member kind="variable">
      <type>dataset_public_state_t</type>
      <name>dataset_public_state</name>
      <anchorfile>a00012.html</anchorfile>
      <anchor>af64462dec1f4d79caaee7f10664f785c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>heap_str</type>
      <name>filter_types</name>
      <anchorfile>a00012.html</anchorfile>
      <anchor>a30a70df340b6d28f869b5e53fab8fea5</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>directive</name>
    <filename>a00013.html</filename>
    <member kind="variable">
      <type>directive_type_t</type>
      <name>type</name>
      <anchorfile>a00013.html</anchorfile>
      <anchor>aef9fb73c429978518e330737de503eee</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>char const *</type>
      <name>keyword</name>
      <anchorfile>a00013.html</anchorfile>
      <anchor>aeed5dbcc2cc2e02ba9be83a193881386</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>directives_tally_state_s</name>
    <filename>a00014.html</filename>
    <member kind="variable">
      <type>ptr_vector_h</type>
      <name>directives_tab</name>
      <anchorfile>a00014.html</anchorfile>
      <anchor>a4b138c64dd4d6730a72d5d9369e76f6c</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>eval_result</name>
    <filename>a00015.html</filename>
    <member kind="variable">
      <type>char *</type>
      <name>sym_name</name>
      <anchorfile>a00015.html</anchorfile>
      <anchor>ab1d0eba310c2cde50463c5a01ee30cd3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>canonical_string_h</type>
      <name>sym_def</name>
      <anchorfile>a00015.html</anchorfile>
      <anchor>a47b45a557fb09e5fe6f73e157004c962</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>canonical_string_h</type>
      <name>most_resolved</name>
      <anchorfile>a00015.html</anchorfile>
      <anchor>a42ebf53c5e1d4b0fe72480970d147eb1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int_spec_t</type>
      <name>value</name>
      <anchorfile>a00015.html</anchorfile>
      <anchor>a4bafa9afbceccd0fdcb992327e37211a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>flags</name>
      <anchorfile>a00015.html</anchorfile>
      <anchor>add1e230a3fd795c5986eaf4d211c201f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>line</name>
      <anchorfile>a00015.html</anchorfile>
      <anchor>afd695eeb62f718046949c16fb0d60ddf</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>evaluator_state_s</name>
    <filename>a00016.html</filename>
    <member kind="variable">
      <type>char const *</type>
      <name>ifpos</name>
      <anchorfile>a00016.html</anchorfile>
      <anchor>a0762fc74c63052b0460304881f0b951e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>line_type_t</type>
      <name>line_type</name>
      <anchorfile>a00016.html</anchorfile>
      <anchor>afec767cc1c7f48ff8b44571126acaaae</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>parsing_sym_def_depth</name>
      <anchorfile>a00016.html</anchorfile>
      <anchor>aab1a0420d41e6e31eb30d9e3ca93937f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>exclusion_list</name>
    <filename>a00017.html</filename>
    <member kind="variable">
      <type>int</type>
      <name>excluder</name>
      <anchorfile>a00017.html</anchorfile>
      <anchor>a024e8848d9f254cc6a46f00c12f90152</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int const *</type>
      <name>excluded</name>
      <anchorfile>a00017.html</anchorfile>
      <anchor>ae205e0dab538fd4ad83d6297c59b43c2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>file_tree</name>
    <filename>a00018.html</filename>
    <member kind="variable">
      <type>union file_tree::@1</type>
      <name>var</name>
      <anchorfile>a00018.html</anchorfile>
      <anchor>a6ffea573605ab8214e6e171eaf0fb151</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>heap_str</type>
      <name>leafname</name>
      <anchorfile>a00329.html</anchorfile>
      <anchor>a34d0045c7b39fe99e124994b772ddd25</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>file_filter_t</type>
      <name>filter</name>
      <anchorfile>a00329.html</anchorfile>
      <anchor>a7f480bbdc4887e9ed98f6a9065f7c343</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>struct file_tree *</type>
      <name>parent</name>
      <anchorfile>a00018.html</anchorfile>
      <anchor>a4e24e8e408576872882b13bcb863da28</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>ptr_vector_h</type>
      <name>children</name>
      <anchorfile>a00018.html</anchorfile>
      <anchor>aee29578acb0e6f3914768f0fc1cb8a6e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned</type>
      <name>files</name>
      <anchorfile>a00018.html</anchorfile>
      <anchor>aaa8e1c3b47bbd3ebc8dfa63ca25a4221</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>file_tree_count_t</name>
    <filename>a00019.html</filename>
    <member kind="variable">
      <type>size_t</type>
      <name>files</name>
      <anchorfile>a00019.html</anchorfile>
      <anchor>a7f61b7421480f9e219593b08a053bbf9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>dirs</name>
      <anchorfile>a00019.html</anchorfile>
      <anchor>a3afb874bcc21d7044b2f71ef2107daf1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>children</name>
      <anchorfile>a00019.html</anchorfile>
      <anchor>ac4242c8350cd529683f39f5e0bc3aae3</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>fs_dir_nix</name>
    <filename>a00020.html</filename>
    <member kind="variable">
      <type>struct fs_dir_nix *</type>
      <name>parent</name>
      <anchorfile>a00020.html</anchorfile>
      <anchor>a32446317f9eb71c63ccef1199251006f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>heap_str</type>
      <name>dirname</name>
      <anchorfile>a00020.html</anchorfile>
      <anchor>a05dc024d1bdb209a895db7b1be5bd0de</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>char *</type>
      <name>dirname_end</name>
      <anchorfile>a00020.html</anchorfile>
      <anchor>a9c6cf7bc39dd938b75f711f79c73dd0c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>DIR *</type>
      <name>dir</name>
      <anchorfile>a00020.html</anchorfile>
      <anchor>a1a3163356a9bd23b7fd671fb6aa4089e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>struct dirent</type>
      <name>entry</name>
      <anchorfile>a00020.html</anchorfile>
      <anchor>a58cd48f5e4d2cfd1ee59bed2c2fed924</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>fs_dir_win</name>
    <filename>a00021.html</filename>
    <member kind="variable">
      <type>struct fs_dir_win *</type>
      <name>parent</name>
      <anchorfile>a00021.html</anchorfile>
      <anchor>a6196f4f98694f40b25322ec9d325e643</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>heap_str</type>
      <name>dirname</name>
      <anchorfile>a00021.html</anchorfile>
      <anchor>afa2cf503431e42b7627db0ecfdf1e52c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>char *</type>
      <name>dirname_end</name>
      <anchorfile>a00021.html</anchorfile>
      <anchor>a9dc583db5911450d11a5d39702a9de0b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>HANDLE</type>
      <name>handle</name>
      <anchorfile>a00021.html</anchorfile>
      <anchor>ae570242d9f0fd212738625248583d564</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>WIN32_FIND_DATA</type>
      <name>obj_info</name>
      <anchorfile>a00021.html</anchorfile>
      <anchor>aed93388ec51ec8350b93e760b10b017a</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>if_control_state_s</name>
    <filename>a00022.html</filename>
    <member kind="variable">
      <type>if_state_t</type>
      <name>ifstate</name>
      <anchorfile>a00022.html</anchorfile>
      <anchor>aeb2725396f5bcfc5665223885126b347</anchor>
      <arglist>[64]</arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>depth</name>
      <anchorfile>a00022.html</anchorfile>
      <anchor>ab88fec64577a9b21a3cb25b66b0a2ed8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>if_start_lines</name>
      <anchorfile>a00022.html</anchorfile>
      <anchor>af7475f93bc8461244a0ab70c51b00020</anchor>
      <arglist>[64]</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>includes_tally_public_state_s</name>
    <filename>a00023.html</filename>
    <member kind="variable">
      <type>ptr_set_h</type>
      <name>includes_tab</name>
      <anchorfile>a00023.html</anchorfile>
      <anchor>ae5f9e2be4e195c27b0c5a4453a554cf6</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>int_spec</name>
    <filename>a00024.html</filename>
    <member kind="variable">
      <type>union int_spec::@3</type>
      <name>val</name>
      <anchorfile>a00024.html</anchorfile>
      <anchor>a1784517075fed0fddf6dc103887bfca5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>long long</type>
      <name>ll</name>
      <anchorfile>a00330.html</anchorfile>
      <anchor>a6bcc61bfa4011a8312357648bb6fb167</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned long long</type>
      <name>ull</name>
      <anchorfile>a00330.html</anchorfile>
      <anchor>adf525bc5b7d7f83e67827ee580873207</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>long</type>
      <name>l</name>
      <anchorfile>a00330.html</anchorfile>
      <anchor>a6a6c5e3b853f382e15b1b29d8e16e925</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned long</type>
      <name>ul</name>
      <anchorfile>a00330.html</anchorfile>
      <anchor>a62642cb6a01cd6d4aad0df0a94d50b6e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>i</name>
      <anchorfile>a00330.html</anchorfile>
      <anchor>a9f511a115ed3edc56c98e082215e45af</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned</type>
      <name>ui</name>
      <anchorfile>a00330.html</anchorfile>
      <anchor>af173cccbe672751a48b652328230a7e1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int_type</type>
      <name>type</name>
      <anchorfile>a00024.html</anchorfile>
      <anchor>a4ddc54ae05b3004d8d923694fde26a26</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>io_state_s</name>
    <filename>a00025.html</filename>
    <member kind="variable">
      <type>io_public_state_t</type>
      <name>io_public_state</name>
      <anchorfile>a00025.html</anchorfile>
      <anchor>ae8cb030da73ab120ca806ab92902bd0e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>FILE *</type>
      <name>input</name>
      <anchorfile>a00025.html</anchorfile>
      <anchor>ad7af641182d5886d9a08d3dccdf5220a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>bufsz</name>
      <anchorfile>a00025.html</anchorfile>
      <anchor>ae0041fe0af2d01a2c6de00d01d0bb0e3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>infile</name>
      <anchorfile>a00025.html</anchorfile>
      <anchor>a1e24a9c94c95c7a1e973746030a4f7ed</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>char *</type>
      <name>in_name_buf</name>
      <anchorfile>a00025.html</anchorfile>
      <anchor>a41474516d8d49641fd989492f3cc38bb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>char *</type>
      <name>out_name_buf</name>
      <anchorfile>a00025.html</anchorfile>
      <anchor>a74a5740a5fa75343657ba3485942bbbb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>char *</type>
      <name>bak_name_buf</name>
      <anchorfile>a00025.html</anchorfile>
      <anchor>ac8072f57eac6fd2ab1fa95df5ef6a9c0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>saved_read_pos</name>
      <anchorfile>a00025.html</anchorfile>
      <anchor>af7bb85ed2e15fc0157ee21cfa701f48a</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>line_despatch_public_state_s</name>
    <filename>a00026.html</filename>
    <member kind="variable">
      <type>int</type>
      <name>lines_inactive</name>
      <anchorfile>a00026.html</anchorfile>
      <anchor>a417d9ff545c40a223590a745c9a5240d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>lines_changed</name>
      <anchorfile>a00026.html</anchorfile>
      <anchor>a3c22af1860901956b8acc0886571a0e8</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>line_despatch_state_s</name>
    <filename>a00027.html</filename>
    <member kind="variable">
      <type>line_despatch_public_state_t</type>
      <name>line_despatch_public_state</name>
      <anchorfile>a00027.html</anchorfile>
      <anchor>ad19236c63f836e1bd8d9a1cd132dda5c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>flushline</name>
      <anchorfile>a00027.html</anchorfile>
      <anchor>a82a3800fa645537d51f989754d76b2a9</anchor>
      <arglist>)(bool, const char *)</arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>drop_run</name>
      <anchorfile>a00027.html</anchorfile>
      <anchor>a161bb08d8637dba0c42d434bda4d0d4d</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>line_edit_public_state_s</name>
    <filename>a00028.html</filename>
    <member kind="variable">
      <type>char *</type>
      <name>keyword</name>
      <anchorfile>a00028.html</anchorfile>
      <anchor>adac61794dcac28859cb3096932060c48</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>ops_cut</name>
      <anchorfile>a00028.html</anchorfile>
      <anchor>ae340293b5b5b40ae4e9a3b6a8dc50583</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>parens_deleted</name>
      <anchorfile>a00028.html</anchorfile>
      <anchor>a20859d9491ea1e9c8334a2a8f2300b7a</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>line_select_public_state_s</name>
    <filename>a00029.html</filename>
    <member kind="variable">
      <type>bool</type>
      <name>dropping_line</name>
      <anchorfile>a00029.html</anchorfile>
      <anchor>a1dd36693e3a41242253387aee59e9282</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>operation</name>
    <filename>a00030.html</filename>
    <member kind="variable">
      <type>const char *</type>
      <name>str</name>
      <anchorfile>a00030.html</anchorfile>
      <anchor>a986df96ad04749ce567b696caba5b994</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>eval_result_t(*</type>
      <name>fn</name>
      <anchorfile>a00030.html</anchorfile>
      <anchor>a492404dd75348b747367190482ea8b62</anchor>
      <arglist>)(eval_result_t *, eval_result_t *)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>option</name>
    <filename>a00031.html</filename>
    <member kind="variable">
      <type>const char *</type>
      <name>name</name>
      <anchorfile>a00031.html</anchorfile>
      <anchor>adc503659d37af8017fb4b86d61c99086</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>has_arg</name>
      <anchorfile>a00031.html</anchorfile>
      <anchor>a90d7ee9a51eea5c002682dbd0af149e4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int *</type>
      <name>flag</name>
      <anchorfile>a00031.html</anchorfile>
      <anchor>ab366eea5fe7be25c1928328ba715e353</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>val</name>
      <anchorfile>a00031.html</anchorfile>
      <anchor>a13bd155ec3b405d29c41ab8d0793be11</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>ptr_set</name>
    <filename>a00032.html</filename>
    <member kind="variable">
      <type>ptr_vector_h</type>
      <name>pv</name>
      <anchorfile>a00032.html</anchorfile>
      <anchor>a0fccb0f647a6d48090eac54fe302282d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>comparator_t</type>
      <name>compare</name>
      <anchorfile>a00032.html</anchorfile>
      <anchor>a8b1c8a370d850ec10f8b54c8b3bb9f4f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>locator_t</type>
      <name>cached_pos</name>
      <anchorfile>a00032.html</anchorfile>
      <anchor>a84b696d1fb6d9b661b34505fa8e1c3b1</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>ptr_vector</name>
    <filename>a00033.html</filename>
    <member kind="variable">
      <type>size_t</type>
      <name>tranch</name>
      <anchorfile>a00033.html</anchorfile>
      <anchor>a2c78de1f9b879f9ec2eafae9c3da5898</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>count</name>
      <anchorfile>a00033.html</anchorfile>
      <anchor>a24f0f1c6bd5062752cd74c69407f35f0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>cap</name>
      <anchorfile>a00033.html</anchorfile>
      <anchor>a221c1b62b2cd9fe32668cb5b1f42cd78</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>dtor_t</type>
      <name>dtor</name>
      <anchorfile>a00033.html</anchorfile>
      <anchor>aa72780f4405bc726394b5e085cdaaafc</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>cloner_t</type>
      <name>cloner</name>
      <anchorfile>a00033.html</anchorfile>
      <anchor>a931f5c3cc1e319b964709d3a5d0398a0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void **</type>
      <name>ptrs</name>
      <anchorfile>a00033.html</anchorfile>
      <anchor>a6159ce5f0fe64df575bb8b6210ac4b1e</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>report_state_s</name>
    <filename>a00034.html</filename>
    <member kind="variable">
      <type>bool</type>
      <name>dbg</name>
      <anchorfile>a00034.html</anchorfile>
      <anchor>a3a882fc3731fb4b53a6c7327cd702b7b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned int</type>
      <name>exitstat</name>
      <anchorfile>a00034.html</anchorfile>
      <anchor>ae05f21930b2ef4d45d4c3f7be4c35752</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>char const *</type>
      <name>hash_keywords</name>
      <anchorfile>a00034.html</anchorfile>
      <anchor>a646438496d29ce418d0b06ab56022f07</anchor>
      <arglist>[HASH_COUNT]</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>unconfigured_symbols_public_state_s</name>
    <filename>a00035.html</filename>
    <member kind="variable">
      <type>ptr_set_h</type>
      <name>sym_tab</name>
      <anchorfile>a00035.html</anchorfile>
      <anchor>a7d0656fbf0d41dcaf509b7a8b2c00f07</anchor>
      <arglist></arglist>
    </member>
  </compound>
</tagfile>
